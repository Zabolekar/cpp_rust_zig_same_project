use std::os::raw::c_char;

#[unsafe(no_mangle)]
pub extern "C" fn call_rust_from(caller: *const c_char) {
    let c_str = unsafe { std::ffi::CStr::from_ptr(caller) };
    println!("Calling Rust from {}.", c_str.to_str().unwrap());
}

#[unsafe(no_mangle)]
pub extern "C" fn call_from_rust() {
    let caller = c"Rust".as_ptr();
    unsafe extern "C" {
        fn call_cpp_from(caller: *const c_char) -> ();
        fn call_zig_from(caller: *const c_char) -> ();
    }
    unsafe {
        call_cpp_from(caller);
        call_zig_from(caller);
    }
}
