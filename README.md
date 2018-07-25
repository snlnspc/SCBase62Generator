# SCBase62Generator
A quick way to create short, unique, and human readable IDs.

### Use
```swift
let id = SCBase62Generator().makeb62(length: 6) 
print(id) // mnJPUy1
```
> You can pass a length value (int) to the `length` parameter. 

If you are unsure of many characters to use, read [the explanation](#explanation) for context.
### Download
Download and include [the source file](https://github.com/harmankang/SCBase62Generator/blob/master/src/SCBase62_Generator.swift) in your xcode project. It's not a very large file (at just `2.38 KB`).

### Testing the uniqueness
I looped `SCBase62Generator` 10 times using the following code.

```swift
for i in stride(from: 0, through: 9, by: 1) {
  // Get id 6 characters long
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

### Why
I wrote `SCBase62Generator` because I needed short and unique ids that didn't look nefarious.

### Explanation
If you generate a 6 character random string, then there are 62<sup>6</sup> = 56,800,235,584 possible combinations of the base 62 character set. That means if you generated a unique id once every second, it would take more than 657,000 days, or 1800+ years, to run out (please see my [warning](#warning)).

The [character set](https://github.com/harmankang/SCBase62Generator/blob/master/src/SCBase62_Generator.swift#L60) I use is alphanumerical. Including both upper and lower cases, there are 62 alphanumerical characters in the set. 

I looked into Base64 encoding, but it gives `/`'s and that is not acceptable for URL use-cases.

### Warning

I should warn you that there is no guarantee that `SCBase62Generator` will be collision proof. You should use a database to keep track of existing ids.

### License
MIT

