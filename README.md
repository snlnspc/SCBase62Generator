# SCBase62Generator
A quick way to create short, unique, and human readable IDs.

### Use
```swift
let id = SCBase62Generator().makeb62(length: 6) 
print(id) // mnJPUy1
```
You can pass a string length value (int) to the `length` parameter.
### Download
Download and include [the source file](https://github.com/harmankang/SCBase62Generator/blob/master/src/SCBase62_Generator.swift) in your xcode project.

### Testing the uniqueness
I looped SCBase62Generator using the following code.

```swift
for i in stride(from: 0, through: 10, by: 1) {
  let id = SCBase62Generator().makeb62(length: 6)
  print("\(id)")
}
```
This was the output:

```
XbdlCAU
YByudqe
vGuRsOg
e6PUoGk
6ObcbyV
NK2xhmM
CPbGK1K
izBZK0b
RgHntm0
MOpInwL
7xlirMr
```

### Explanation
I wrote SCBase62Generator because I needed short and unique ids that didn't look nefarious.



