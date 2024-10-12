//! Created October 12th, 2024 (2:46 PM)
//!
//! I'm using the book "Data Structures & Algorithm Analysis in Java" by
//! Mark Allen Weiss (because I still have it from my college days) to implement
//! algorithms & the such for the purpose of learning Zig.
//!
//! This files is just an exercise implementing a basic "Find Min" algorithm for
//! finding the smallest value in an array of integer. It is linear, so it simply
//! take the 1st value of the array, compares it to the 2nd value, stores the
//! smaller value in the 'min' variable, & walks through the entire array in
//! order until it reaches the end of the array, then prints the smallest integer
//! to the screen.

const std = @import("std");
pub fn main() !void {
    try genericFindMin();
}

pub fn genericFindMin() !void {
    const stdout = std.io.getStdOut().writer();
    const random_array = [_]i16{ -45, 34, -687, 4, -3, 67 };

    var first_comparable: i16 = 0;
    var minimum: i16 = 0;

    var i: u8 = 0;
    minimum = random_array[i];
    while (i < random_array.len) {
        if (i + 1 != random_array.len) {
            first_comparable = random_array[i + 1];
        }

        if (first_comparable < minimum) {
            minimum = first_comparable;
        }
        i += 1;
    }
    try stdout.print("{d}\n", .{minimum});
}
