//
//  interactive.swift
//  Zoo-Raw
//
//  Created by Robert White on 10/14/16.
//  Copyright © 2016 Teky. All rights reserved.
//

import Foundation

class Interactive {
    
    private var done: Bool = false
    private var currentInput: String = ""
    private var io = Io()
    private var people = People(name: "")
    private var employee = Employee(name: "")
    private var visitor = Visitor(name: "")
    private var animals = Animals(name: "")
    private var aqua = Aqua(name: "")
    private var land = Land(name: "")
    private var flying = Flying(name: "")
    
 
    
    func go() {
        while !done {
            
            //Ask the user for input right here.
            
            io.writeMessage ("\nType in Help for options of the Zoo!")
            currentInput = io.getInput()
            
            if currentInput == "Quit" {
                done = true
            }else if currentInput == "People"{
               employee.zEmployee()
               visitor.zVisitor()
            
            }else if currentInput == "Animals"{
              animals.listInfo()
              aqua.listAqua()
              land.listLand()
              flying.listFlying()
              
                

                
                
            }else if currentInput == "Help"{
                print("If you want to want kind of people are at the zoo type People.  If you want to know what types of animals are at the zoo type Animals.  To Quit out of program type Quit.")
                
                
            }else{
                print("The input is: \(currentInput)")
            }
            
        }
        print ("Exiting....")
        
        return
    }
}
