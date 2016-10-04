//
//  Bird.swift
//  ClassesNenums
//
//  Created by James Campagno on 7/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//
//13. Create a method called speak(). This method should return the string ""ROAAAWWWWRRRRR!!!!!!".
//14. Create a method called isFaster(thanTrex:). This method should take one parameter of type Trex called trex. It should return true if the instance of Trex which is calling on this method is called is faster than the parameter passed in. 15. Create a method called eat(otherTrex:). This method should take one parameter of type Trex called trex. If the instance of Trex which calls on this method is faster than the parameter that is passed in, it should "eat" the other Trex (by setting the other Trex's isAlive property to false).
//
//That's it! Try running the tests again. This time, they should pass. If they don't, take a look at these directions again and make sure you implemented everything properly, and keeping hammering away until the tests do pass!



import Foundation


enum Speed: Int {
    case slow = 1
    
    case medium = 2
    
    case fast = 3
    
    
    func isFaster(thanSpeed:Speed)->Bool{
        if thanSpeed.rawValue <  self.rawValue {
            return true
        } else {
            return false
        }
       
    
        }
    
    }

enum Diet {
    case meatEater
    
    case Vegetarian
}

enum Sex {
    case female
    
    case male
}


class Trex{
    var speed: Speed
    var diet: Diet = Diet.meatEater
    var name : String
    var sex : Sex
    var isAlive: Bool = true
    
    
    init(name:String, sex: Sex){
        self.speed = Speed.fast
        self.name = name
        self.sex = sex
    }
    
   func speak()->String{
    return "ROAAAWWWWRRRRR!!!!!!"
    }
    
    func isFaster(thanTrex:Trex )->Bool{
        if thanTrex.speed.rawValue < self.speed.rawValue {
            return true
        } else {
            
        }
        return false
    }
    
    func eat(otherTrex:Trex){
        if otherTrex.speed.rawValue < self.speed.rawValue{
            otherTrex.isAlive = false
        } else {
            
        }
    }
    
    
    
}

