//
//  QuadracticEquationVariables .swift
//  Assignment 2 - Quadradic Equation
//
//  Created by IIT phys 440 on 1/20/23.
//
//  Here is the Quadratic Equation
//
//  a * (x^2) + b * x + c = 0
//
//  It has an analytic solution that can be written as
//
//  x(1,2) = (-b +- sqrt(b^2 - 4 * a * c)) / 2 * a
//
//  Or it can also be written in the form of subtractive cancellation shown below
//
//  x(1,2)' = -2 * c  / (b +- sqrt(b^2 - 4 * a * c))
//
//  I will now create a program that calculates the unique solutions for both quadratic solutions above for a total of 4 unique solutions
//
import Foundation




class quadraticEquation{
    
    var a: Double = 0.0
    var b: Double = 0.0
    var c: Double = 0.0
    
    
    
    
    
    func calculateRealRootsForX12(a: Double, b: Double, c: Double) -> (Double, Double) {
        let numeratorX1: Double = -b + sqrt(pow(b,2) - 4*a*c)
        let numeratorX2: Double = -b - sqrt(pow(b,2) - 4*a*c)
        let denominatorX12: Double = 2*a
        var rootX1: Double = 0.0
        var rootX2: Double = 0.0
        let underRoot = pow(b,2) - 4*a*c
        rootX1 = numeratorX1 / denominatorX12
        rootX2 = numeratorX2 / denominatorX12
        let underRootIsZero = -b / (2*a)
        
        
        switch underRoot {
        case let x where x > 0:
            print("The Root for X1 is Real and is:" , rootX1, "+ 0.0i"  )
            print("The Root for X2 is Real and is:" , rootX2, "- 0.0i"  )
            
        case let x where x == 0:
            print("The Root for X1 is Real and is:", underRootIsZero, "+ 0.0i")
            print("The Root for X2 is Real and is:", underRootIsZero, "- 0.0i")
            
        case let x where x < 0:
            var newUnderRoot = -1 * underRoot
            
        default:
            print("Something went wrong")
        
            
        }
        
        
       // var rootX3 = numeratorX1 / denominatorX12
       // var rootX4 = numeratorX1 / denominatorX12
    
        return (rootX1, rootX2)
        

    }
}
    
    
   

















