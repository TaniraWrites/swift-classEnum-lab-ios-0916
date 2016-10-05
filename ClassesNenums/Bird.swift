//
//  Bird.swift
//  ClassesNenums
//
//  Created by James Campagno on 7/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//
//second pull request



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

