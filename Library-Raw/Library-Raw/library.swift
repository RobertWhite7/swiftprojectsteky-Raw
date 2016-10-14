//
//  library.swift
//  Library-Raw
//
//  Created by Robert White on 10/12/16.
//  Copyright © 2016 Teky. All rights reserved.
//

import Foundation

class Library {
     private var io = Io()
    var dict: [String:String] = [
        "Cheesy Romance" : "Checked In",
        "Walker Texas Ranger" : "Checked In",
        "Coding for Dummies" : "Checked In",
        "How to cook with beer!" : "Checked In"]
  
    
    private var bookInput: String = ""
   

    

    func bookList(){
 
        for i in dict{
            print(i)
        }
        
        return
    }
    
    
    func addBook(){
      print("What book would you like to CheckIn?")
        bookInput = io.getInput()
        dict[bookInput] = "Checked in"
        }
    
    
            
    
    func removeBook(){
        io.writeMessage("What book woutl you like to CheckOut?")
        bookInput = io.getInput()
        dict.removeValue(forKey: bookInput)
     
    }

  

    func library() {
        bookList()
        removeBook()
        bookList()
        addBook()
        bookList()
       
    }

}
