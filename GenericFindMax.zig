//! Created October 11th, 2024 (12:21 PM)
//! I'm using the book "Data Structures & Algorithm Analysis in Java" by
//! Mark Allen Weiss (because I still have it from my college days) to implement
//! algorithms & the such for the purpose of learning Zig.
//! This files is just an exercise implementing a basic "Find Max" algorithm for
//! finding the largest value in an array of integer. It is linear, so it simply
//! take the 1st value of the array, compares it to the 2nd value, stores the
//! larger value in the 'max' variable, & walks through the entire array in
//! order until it reaches the end of the array, then prints the largest integer
//! to the screen.
const std = @import("std");
pub fn main() !void {
    try genericFindMax();
}

pub fn genericFindMax() !void {
    const stdout = std.io.getStdOut().writer();
    const random_array = [_]i16{ 34, 687, 4, -3, 67 };

    var first_comparable: i16 = 0;
    var max: i16 = 0;

    var i: u8 = 0;
    max = random_array[i];
    while (i < random_array.len) {
        if (i + 1 != random_array.len) {
            first_comparable = random_array[i + 1];
        }

        if (first_comparable > max) {
            max = first_comparable;
        }
        i += 1;
    }
    try stdout.print("{d}\n", .{max});
}
