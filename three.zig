const std = @import("std");

extern fn call_cpp_from([*:0]const u8) void;
extern fn call_rust_from([*:0]const u8) void;

export fn call_zig_from(caller: [*:0]const u8) void {
    std.debug.print("Calling Zig from {s}.\n", .{caller});
}

export fn call_from_zig() void {
    call_cpp_from("Zig");
    call_rust_from("Zig");
}
