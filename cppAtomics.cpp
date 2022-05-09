
#include <pthread.h>
#include <new>
#include <iostream>
#include <random>
#include "Api.h"


constexpr size_t kThreadCount = 256;
constexpr size_t kMemBlockCount = 8;
constexpr size_t kMemSize = 64;

// Thread Functions
static void* CallApiFunctionCreate(void* arg);
static void* CallApiFunctionDestroy(void* arg);

// Shared Resource
void* PtrMemArray[kMemSize];

int main(void)
{
	std::cout << "Hello World::Helgrind Test\n";
	std::mt19937_64 gen64(std::random_device{}()); // random number generation
	pthread_t threads[kThreadCount];

	for (auto i = 0; i < kMemBlockCount; i++)
	{
		PtrMemArray[i] = malloc(kMemSize);
		__builtin_memset(PtrMemArray[i], 0, kMemSize);
	}

	int err = 0;
	std::cout << "Creating Threads\n";

	for (auto i = 0; i < kThreadCount; i++)
	{
		auto slot = static_cast<uint64_t>(gen64() % kMemBlockCount);
		bool odd = gen64() % 2;
		if (odd)
		{
			err = pthread_create(&threads[i], nullptr, &CallApiFunctionCreate, (void*)slot);
		}
		else
		{
			err = pthread_create(&threads[i], nullptr, &CallApiFunctionDestroy, (void*)slot);
		}

		if (err)
		{
			std::cout << "Failed to create thread #" << i << "\n";
		}
	}

	std::cout << "Joining Threads\n";
	for (auto i = 0; i < kThreadCount; i++)
	{
		pthread_join(threads[i], nullptr);
	}

	for (auto i = 0; i < kMemBlockCount; i++)
	{
		CallApiFunctionDestroy(reinterpret_cast<void*>(i));
		free(PtrMemArray[i]);
	}
	return 0;
}

static void* CallApiFunctionCreate(void* arg)
{
	auto slot = reinterpret_cast<uint64_t>(arg);
	std::cout << "Calling API CREATE on slot #" << slot << "\n";
	int err = ApiCreateFunction(PtrMemArray[slot], kMemSize);

	if (err)
	{
		std::cout << "API CREATE Failed on slot #" << slot << ": Resource Not Available\n";
	}
	else
	{
		std::cout << "API CREATE Complete on slot #" << slot << "\n";
	}
	return reinterpret_cast<void*>(err);
}


static void* CallApiFunctionDestroy(void* arg)
{
	auto slot = reinterpret_cast<uint64_t>(arg);
	std::cout << "Calling API DESTROY on slot #" << slot << "\n";
	int err = ApiDestroyFunction(PtrMemArray[slot], kMemSize);

	if (err)
	{
		std::cout << "API DESTROY Failed on slot #" << slot << ": Resource Not Available\n";
	}
	else
	{
		std::cout << "API DESTROY Complete on slot #" << slot << "\n";
	}
	return reinterpret_cast<void*>(err);
}