//
//  Classes.swift
//  Zoo-Raw
//
//  Created by Robert White on 10/14/16.
//  Copyright © 2016 Teky. All rights reserved.
//

import Foundation


class People{
    enum Person{
        case Employee
        case Visitor
        case Neither
    }
    var name: String
    var money: Int
    var clothes: Bool
    var shoes: Bool
    var description: String
    var type = Person.Neither
    
    
    init(name: String) {
        self.name = name
        self.money = 100
        self.clothes = true
        self.shoes =  true
        self.description = "This is a normal person"
        
    }
 
 
    func regular() {
        print("Description: \(description)")
        print("Name: \(name)")
        print("Money: \(money)")
        print("Clothes on? \(clothes)")
        print("Shoes on? \(shoes)")
       
        
    }

}

class Employee: People {
    enum eInv: String {
        case Badge
        case Uniform
        
    }
    
    override init(name: String) {
        super.init(name: name)
        money = 0
        clothes = true
        shoes =  true
        description = "This is an Employee"
        type = .Employee
    }
    func zEmployee() {
        print("Description: \(description)")
        print("Name: \(name)")
        print("Money: \(money)")
        print("Clothes on? \(clothes)")
        print("Shoes on? \(shoes)")
      
    }
    

}


class Visitor: People {
    enum vInv: String {
        case ZooPass
        case SunGlasses
       
   
    }
    
    override init(name: String) {
        super.init(name: name)
        money = 200
        clothes = true
        shoes =  true
        description = "This is a Visitor"
        type = .Visitor
    }
    func zVisitor() {
        print("Description: \(description)")
        print("Name: \(name)")
        print("Money: \(money)")
        print("Clothes on? \(clothes)")
        print("Shoes on? \(shoes)")
      
    }
    
  
}
