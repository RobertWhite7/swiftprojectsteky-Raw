//
//  interactive.swift
//  Library-Raw
//
//  Created by Robert White on 10/12/16.
//  Copyright © 2016 Teky. All rights reserved.
//

class Interactive {
    private var lib = Library()
    private var done: Bool = false
    private var currentInput: String = "q"
    private var io = Io()
    
    
    func go() {
        while !done {
            
            //Ask the user for input right here.
            
            io.writeMessage ("\nType in Help for options!")
            currentInput = io.getInput()
            
            if currentInput == "Quit" {
                done = true
            }else if currentInput == "Library"{
                lib.library()
                
                
            }else if currentInput == "Help"{
                print("If you want the list of books in Library type ListBooks. If you want to check a book out or in type Librrary and follow the instructions.  To Quit out of program type Quit.")
                
                
            } else if currentInput == "ListBooks"{
             print(lib.dict)

            }else{
                print("The input is: \(currentInput)")
            }
            
        }
        print ("Exiting....")
        
        return
    }
}
