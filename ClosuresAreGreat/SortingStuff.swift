//
//  SortingStuff.swift
//  ClosuresAreGreat
//
//  Created by Jim Campagno on 10/25/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation
import UIKit


struct ToyBin {
    
    var ships: [Ship] = []
    var books: [Book] = []
    var bowlingPins: [BowlingPin] = []
    var musicCDs: [MusicCD] = []
    
    // TODO: Implement all of the sort functions (lets organize this toy bin!)
    mutating func sortShips() {
        ships = ships.sorted { (first: Ship, second: Ship) -> Bool in
            if first.name == "Titanic" {
                return true
            } else if second.name == "Titanic" {
                return false
            }
            return first.age > second.age
        }
    }
    
    mutating func sortBooks() {
        books = books.sorted { return $0.name > $1.name}
    }
    
    mutating func sortBowlingPins() {
        bowlingPins = bowlingPins.sorted { return $0.color.rawValue < $1.color.rawValue }
    }
    
    
    
    mutating func sortMusicCDs() {
        musicCDs = musicCDs.sorted { return $0.name > $1.name && $0.name == "Drake" }
    }
    
    mutating func changeColorOfAllPins(to color: Color) {
        bowlingPins = bowlingPins.map { bowlingPin in
            var newBowlingPin = bowlingPin
            newBowlingPin.changeColor(to: color)
            return newBowlingPin
        }
    }
    
 
}


struct Ship {
    var name: String
    var age: Int
}


struct Book {
    var name: String
    var year: Int
    var author: String
}


struct BowlingPin {
    var name: String
    var film: String
    var color: Color
    
    mutating func changeColor(to color: Color) {
        self.color = color
    }
}


enum Color: Int {
    case red, orange, yellow, green, blue, indigo, violet
}


struct MusicCD {
    var name: String
    var year: Int
    var songs: [String]
}
