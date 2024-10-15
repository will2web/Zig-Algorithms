const std = @import("std");
pub fn main() !void {
    try GenericFindMinLessVariables();
}

pub fn GenericFindMinLessVariables() !void {
    const stdout = std.io.getStdOut().writer();
    const random_array = [_]i16{ 4545, 34, 687, 35, 30, 31000 };

    var for_minimum: i16 = random_array[0];
    for (random_array) |value|
        if (value < for_minimum) {
            for_minimum = value;
        };

    try stdout.print("{d}\n", .{for_minimum});
}
