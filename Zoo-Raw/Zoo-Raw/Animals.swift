//
//  Animals.swift
//  Zoo-Raw
//
//  Created by Robert White on 10/14/16.
//  Copyright © 2016 Teky. All rights reserved.
//

import Foundation

class Animals {
    enum Locations{
        case WaterTank
        case Cage
        case Pit
        case Zoo
    }
    var name: String
    var weight: Int
    var height: Int
    var description: String
    var habitat = Locations.Zoo
    
    init(name: String) {
        self.name = name
        self.weight = 100
        self.height = 72
        self.description = "This is the base Animal"
        
    
    }
    func listInfo(){
        print("Description: \(description)")
        print("Name: \(name)")
        print("Weight: \(weight)")
        print("Height: \(height)")
        
    }
}
  


class Aqua: Animals {
    enum aAnimal{
        case Gills
        case Flippers
        
    }
    
    override init(name: String) {
        super.init(name: name)
        weight = 500
        height = 90
        description = "This is the base Aquatic Animal"
        habitat = .WaterTank
     
        
    }
    

    func listAqua(){
        print("Description: \(description)")
        print("Name: \(name)")
        print("Weight: \(weight)")
        print("Height: \(height)")
        print("They live in a \(habitat)")
        
    }
}


class Land: Animals{
    enum lAnimal{
        
        case Legs
        
        
        
    }
    
    override init(name: String) {
        super.init(name: name)
        weight = 1000
        height = 120
        description = "This is a LandBased Animal"
        habitat = .Pit
       
       
        
        
    }
    
    func listLand() {
        print("Description: \(description)")
        print("Name: \(name)")
        print("Weight: \(weight)")
        print("Height: \(height)")
        print("They live in a \(habitat)")
        
    }
    
}

class Flying: Animals{
    enum fAnimal{
        
        case Wings
    
        
        
    }
    
    override init(name: String) {
        super.init(name: name)
        weight = 5
        height = 15
        description = "This is a Flying Animal"
        habitat = .Cage
        
        
    }
    
    func listFlying() {
        print("Description: \(description)")
        print("Name: \(name)")
        print("Weight: \(weight)")
        print("Height: \(height)")
        print("They live in a \(habitat)")
      
    }
   
   
}

