#pragma once

#include <iostream>
#include <pthread.h>
#include <atomic>

constexpr uint64_t kMagicNumber = 0x37CF89A676B66807L;
class ApiObject
{
public:
    ApiObject(void)
    {
        m_IsInitialized = false;
    }

private:
    std::atomic<uint64_t> m_AtomicMagicNumber;
    pthread_mutex_t m_ApiMutex;
    bool m_IsInitialized;


    friend int ApiCreateFunction(void* ptr, size_t len);
    friend int ApiDestroyFunction(void* ptr, size_t len);
};

int ApiCreateFunction(void* ptr, size_t len);

int ApiDestroyFunction(void* ptr, size_t len);