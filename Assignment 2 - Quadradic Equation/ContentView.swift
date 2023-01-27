//
//  ContentView.swift
//  Assignment 2 - Quadradic Equation
//
//  Created by IIT phys 440 on 1/20/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var a: Double = (0.0)
    @State private var b: Double = (0.0)
    @State private var c: Double = (0.0)
    
    
    var body: some View {
        VStack {
            TextField("Enter value for a", value: $a, format: .number)
            TextField("Enter value for b", value: $b, format: .number)
            TextField("Enter value for c", value: $c, format: .number)
          
            Button(action: calculateRoots) {
                            Text("Calculate")
                        }
        }
        Text("Chosen value for a is: \(a)")
        Text("Chosen value for b is: \(b)")
        Text("Chosen value for c is: \(c)")
        
        
      
            
            
        }
    
    func calculateRoots() {
        let quadraticEquation = quadraticEquation()
        var roots: (Double, Double, Double, Double)
        roots = quadraticEquation.calculateRealRootsForX12(a: a,b: b,c: c)
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
