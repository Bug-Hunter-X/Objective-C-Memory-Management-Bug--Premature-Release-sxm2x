The solution is to remove the explicit `release` call. The strong property (`myString`) will handle the memory management automatically.  Here's the corrected code:

```objectivec
@interface MyClass : NSObject
@property (strong, nonatomic) NSString *myString;
@end

@implementation MyClass
- (void)someMethod {
    NSString *string = [[NSString alloc] initWithString: @"Hello"];
    self.myString = string;
    // [string release]; // Removed this line
}
@end
```

By removing the `[string release]` line, the strong reference held by `myString` correctly manages the object's lifecycle.  When `myString` is deallocated, it will automatically release `string`, preventing the memory leak or crash.