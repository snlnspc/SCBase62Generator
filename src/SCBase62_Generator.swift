//
//  SCBase62_Generator.swift
//  https://github.com/harmankang/SCBase62Generator
//
//  Created by Harman Kang on 2018-07-25.
//  Copyright © 2018 Harman Kang. All rights reserved.
//
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//

import Foundation

/**
 SCBase62_Generator Delegate
 */
protocol SCBase62GeneratorDelegate {
    
    /**
     Array to store base 62 characters
     */
    var b62char: Array<Character> { get set }
    
    /**
     An object to store the randomly generated string
     */
    var b62string: String { get set }
    
    /**
     Generates a randomly generated base 62 string
     
     - parameter length: The length of the string
     */
    func makeb62(length len: Int) -> String
    
}

/**
 SCBase62_Generator
 */
class SCBase62Generator: SCBase62GeneratorDelegate {

    // Init b62 character array
    var b62char: Array<Character> = Array("0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz")
    
    // Empty initialization for string
    var b62string: String = ""
    
    // Generate a random string
    func makeb62(length len: Int) -> String {
        
        // Append random character
        for _ in stride(from: 0, through: len, by: 1) {
            let rand_index: Int = Int(arc4random_uniform(62))
            b62string += String(b62char[rand_index])
        }
        
        return b62string
        
    }
    
}
