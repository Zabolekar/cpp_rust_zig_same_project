This example is written in a mixture of C++, Rust, and Zig. It's more straightforward than it sounds: just three dynamic libraries exposing C API.

Building and running it (assuming that you have a C++ compiler, a Rust compiler, Zig compiler, and make; only tested on Linux):

```
make
```

Expected output:

```
Calling Rust from C++.
Calling Zig from C++.
Calling C++ from Rust.
Calling Zig from Rust.
Calling C++ from Zig.
Calling Rust from Zig.
```

