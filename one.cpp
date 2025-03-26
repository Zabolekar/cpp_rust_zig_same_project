#include <iostream>

extern "C"
{
    void call_rust_from(const char*);

    void call_cpp_from(const char* caller)
    {
        std::cout << "Calling C++ from " << caller << ".\n";
    }

    void call_from_cpp()
    {
        call_rust_from("C++");
    }
}
