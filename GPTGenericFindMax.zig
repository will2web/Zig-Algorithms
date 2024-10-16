const std = @import("std");
pub fn main() !void {
    try genericFindMax();
}

pub fn genericFindMax() !void {
    const stdout = std.io.getStdOut().writer();
    const random_array = [_]i16{ 34, 687, 32767, -3, 67 };

    var max: i16 = random_array[0];
    for (random_array) |item| {
        if (item > max) {
            max = item;
        }
    }
    try stdout.print("{d}\n", .{max});
}
