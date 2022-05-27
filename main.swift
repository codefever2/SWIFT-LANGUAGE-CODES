//
//  main.swift
//  palindrome string array
//
//  Created by Kaviya. S on 25/02/22.
//

import Foundation

var n = Int(readLine()!)!

var a : [String] = []

for _ in  0...n-1
{
    let x = readLine()!
    a.append(x)
}

var count = 0
for i in 0...n-1
{
    let x = Array(a[i])
    
    var temp = 0
    var j = x.count - 1
    
    for k in 0...x.count/2 - 1
    {
        if x[k] != x[j]
        {
            temp = 1
            break
        }
        j -= 1
    }
    if temp == 1
    {
        print(a[i])
    }
    else
    {
        count += 1
    }
}
if count == n
{
    print("empty array")
}
        
//to convert array into single string
///var a :[String] = []
///var c = a.joined(separator:"")//
///

