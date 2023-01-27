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
    
    
    
    
    
    func calculateRealRootsForX12(a: Double, b: Double, c: Double) -> (Double, Double, Double, Double) {
        let underRoot = pow(b,2) - 4*a*c
        let numeratorX1: Double = -b + sqrt(underRoot)
        let numeratorX2: Double = -b - sqrt(underRoot)
        let denominatorX12: Double = 2*a
        let numeratorX34: Double = -2 * c
        let denominatorX3: Double = b + sqrt(underRoot)
        let denominatorX4: Double = b - sqrt(underRoot)
        var rootX1: Double = 0.0
        var rootX2: Double = 0.0
        var rootX3: Double = 0.0
        var rootX4: Double = 0.0
        rootX1 = numeratorX1 / denominatorX12
        rootX2 = numeratorX2 / denominatorX12
        rootX3 = numeratorX34 / denominatorX3
        rootX4 = numeratorX34 / denominatorX4
        let underRootIsZeroX12 = -b / (2 * a)
        let underRootIsZeroX34 = -2*c / b
      
        
        
        switch underRoot {
        case let x where x > 0:
            print("The Root for X1 is Real and is:" , rootX1, "+ 0.0i")
            print("The Root for X2 is Real and is:" , rootX2, "- 0.0i")
            print("The Root for X3 is Real and is:" , rootX3, "+ 0.0i")
            print("The Root for X4 is Real and is:" , rootX4, "- 0.0i")
            
        case let x where x == 0:
           
            print("The Root for X1 is Real and is:", underRootIsZeroX12, "+ 0.0i")
            print("The Root for X2 is Real and is:", underRootIsZeroX12, "- 0.0i")
            print("The Root for X3 is Real and is:", underRootIsZeroX34, "+ 0.0i")
            print("The Root for X4 is Real and is:", underRootIsZeroX34, "- 0.0i")
            
        case let x where x < 0:
            let firstTermX12 = -b / (2*a)
            let sqrtPositiveUnderRootX1234 = sqrt(-1 * underRoot)
            let secondTermX12 = sqrtPositiveUnderRootX1234 / (2*a)
            let secondTermX3 = ((2*c) * sqrtPositiveUnderRootX1234) / (2*pow(b,2)-4*a*c)
            let firstTermX34 = (-2*c*b) / (2*pow(b,2)-4*a*c)
            let secondTermX4 = ((-2*c) * sqrtPositiveUnderRootX1234) / (2*pow(b,2)-4*a*c)
            
            
            print("The Root for X1 is Imaginary and is:", firstTermX12, "+", secondTermX12,"i")
            print("The Root for X2 is Imaginary and is:", firstTermX12, "-", secondTermX12,"i")
            print("The Root for X3 is Imaginary and is:", firstTermX34, "+ ", secondTermX3,"i")
            print("The Root for X4 is Imaginary and is", firstTermX34, "+", secondTermX4,"i")
          
            
            
        default:
            print("Something went wrong")
            
 
        }
        

     
        let underRootCIsOneHundreth = pow(b,2) - 4*a*(c*0.1)
        let underRootCIsOneThousanth = pow(b,2) - 4*a*(c*0.01)
        let underRootCIsAlot = pow(b,2) - 4*a*(c*0.0000001)
        
        
        let numeratorX1CisOneHundreth: Double = -b + sqrt(underRootCIsOneHundreth)
        let numeratorX1CisOneThousanth: Double = -b + sqrt(underRootCIsOneThousanth)
        let numeratorX1CisAlot: Double = -b + sqrt(underRootCIsAlot)
       
        let numeratorX2CisOneHundreth: Double = -b - sqrt(underRootCIsOneHundreth)
        let numeratorX2CisOneThousanth: Double = -b - sqrt(underRootCIsOneThousanth)
        let numeratorX2CisAlot: Double = -b - sqrt(underRootCIsAlot)
        
    
        
       
        var rootX1CisOneHundredth = numeratorX1CisOneHundreth / denominatorX12
        var rootX1CisOneThousanth = numeratorX1CisOneThousanth / denominatorX12
        var rootX1CisAlot = numeratorX1CisAlot / denominatorX12
        
        var rootX2CisOneHundredth = numeratorX2CisOneHundreth / denominatorX12
        var rootX2CisOneThousanth = numeratorX2CisOneThousanth / denominatorX12
        var rootX2CisAlot = numeratorX2CisAlot / denominatorX12
        
        print("")
      
        print("When a =1, b=1, c=0.1 we get X1 equal to:" , rootX1)
        print("When a =1, b=1, c=0.1 we get X2 equal to:", rootX2)
        print("")
        print("When a =1, b=1, c=0.01 we get X1 equal to:", rootX1CisOneHundredth)
        print("When a =1, b=1, c=0.01 we get X2 equal to:", rootX2CisOneHundredth)
        
        print("")
        print("When a =1, b=1, c=0.001 we get X1 equal to:", rootX1CisOneThousanth)
        print("When a =1, b=1, c=0.001 we get X2 equal to:", rootX2CisOneThousanth)
        print("")
        print("When a =1, b=1, c=0.00000001 we get X1 equal to:", rootX1CisAlot)
        print("When a =1, b=1, c=0.00000001 we get X2 equal to:", rootX2CisAlot)
        
        
        
        
        
        
        return (rootX1, rootX2, rootX3, rootX4)
        

    }
}
    
    
   

















