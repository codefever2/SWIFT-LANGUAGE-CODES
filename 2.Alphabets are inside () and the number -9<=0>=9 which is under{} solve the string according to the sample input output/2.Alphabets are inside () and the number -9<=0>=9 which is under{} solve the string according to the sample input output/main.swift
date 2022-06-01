//
//  main.swift
//  2.Alphabets are inside () and the number -9<=0>=9 which is under{} solve the string according to the sample input output
//
//  Created by Kaviya. S on 21/02/22.
//

import Foundation

var n = Int(readLine()!)!
var a : [String] = []

for _ in 0...n-1
{
    let x = readLine()!
    a.append(x)
    
}

var output = ""

var altitude = 0
var last = 0

for i in 0...a.count-1
{
    if a[i] == "("
    {
        altitude += 1
    }
    if a[i] == ")"
    {
        altitude -= 1
        
        if a[i+1] == "{" && a[i-1] == "}"
        {
            var z : Int = Int(a[i+2])!
            
            var p = ""
            
            if output == ""
            {
                output = a[i-1]
            }
            
            for _ in 0...z-1
            {
                p = p + output
            }
            output = p
            
            if altitude == 0
            {
                last = i+3
                
                if last != a.count - 1
                {
                    for i in last+1...a.count-1
                    {
                        output = output + a[i]
                    }
                }
                print(output)
                break
            }
        }
        else if a[i+1] == "{"
        {
            var z : Int = Int(a[i+2])!
            
            for _ in 0...z-1
            {
                output = output + a[i-1]
            }
        }
    }
}

