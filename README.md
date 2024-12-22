# Objective-C Memory Management Bug: Premature Release

This repository demonstrates a common, yet subtle, bug in Objective-C related to memory management.  The bug stems from the misuse of `retain`, `release`, and `autorelease`, leading to potential crashes or memory leaks. The example illustrates an incorrect approach to managing object lifecycles and provides a corrected solution.

## Bug Description
The bug involves prematurely releasing an object that is still being referenced by a strong property. This can occur when an object is allocated, assigned to a strong property, and then manually released, resulting in a dangling pointer or a crash if the retain count goes to zero.