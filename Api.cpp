#include "Api.h"

int ApiDestroyFunction(void* ptr, size_t len)
{
	int err = 0;
	if (ptr == nullptr || len < sizeof(ApiObject))
	{
		return -1;
	}
	auto magicNumber = kMagicNumber;
	auto destroyKey = reinterpret_cast<uint64_t>(ptr) + len;
	auto* ptrApiObj = static_cast<ApiObject*>(ptr);

	bool isObjAcquired = ptrApiObj->m_AtomicMagicNumber.compare_exchange_weak(magicNumber,
		destroyKey,
		std::memory_order_release,
		std::memory_order_relaxed);

	if (!isObjAcquired)
	{
		// Object is not available to be destroyed. 
		return -1;
	}
	// Destroy
	if (ptrApiObj->m_IsInitialized)
	{
		err = pthread_mutex_destroy(&ptrApiObj->m_ApiMutex);
		ptrApiObj->m_IsInitialized = false;
	}
	__builtin_memset(ptr, 0, len);
	return err;
}


int ApiCreateFunction(void* ptr, size_t len)
{
	int err = 0;
	if (ptr == nullptr || len < sizeof(ApiObject))
	{
		printf("Error: Bad Params\n");
		return -1;
	}

	/*
		ptr can point to memory that has been memset to 0 or
		it can point to dirty memory. If the atomic<uint64_t>
		holds the base address of the ptr than we're working on it.

	 */
	auto* ptrPossibleApiObj = static_cast<ApiObject*>(ptr);
	uint64_t currentValue = ptrPossibleApiObj->m_AtomicMagicNumber.load();
	uint64_t ptrAddr = reinterpret_cast<uint64_t>(ptr);

	bool isApiObj = ptrPossibleApiObj->m_AtomicMagicNumber.compare_exchange_strong(ptrAddr,
		ptrAddr,
		std::memory_order_release,
		std::memory_order_relaxed);

	if (isApiObj)
	{
		printf("Error: Obj already initialized\n");
		return -1; // This object is being created by on by another thread
	}

	auto magic_number = kMagicNumber;
	bool isApiObjActive = ptrPossibleApiObj->m_AtomicMagicNumber.compare_exchange_strong(magic_number,
		magic_number,
		std::memory_order_release,
		std::memory_order_relaxed);


	if (isApiObjActive)
	{
		return -1; // This object is active, already created
	}
	/*
	 Attempt to set the value of the atomic<uint64_t> to the address pointed to by ptr.
	 */
	auto* ptrApiObj = new (ptr) ApiObject();

	if (!ptrApiObj->m_AtomicMagicNumber.compare_exchange_strong(currentValue,
		ptrAddr,
		std::memory_order_release,
		std::memory_order_relaxed))
	{
		printf("Create API failed to acquire resource.\n");
		return -1; // Something went wrong.
	}

	if (!ptrApiObj->m_IsInitialized)
	{
		err = pthread_mutex_init(&ptrApiObj->m_ApiMutex, nullptr);
		if (err)
		{
			ptrApiObj->m_AtomicMagicNumber.store(0);
			return err;
		}
		ptrApiObj->m_IsInitialized = true;
	}
	ptrApiObj->m_AtomicMagicNumber.store(kMagicNumber); // Signal this is a complete initialization
	return 0;
}