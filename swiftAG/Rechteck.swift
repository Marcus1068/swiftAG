//
//  Rechteck.swift
//  swiftAG
//
//  Created by Marcus Deuß on 12.02.20.
//  Copyright © 2020 Marcus Deuß. All rights reserved.
//

import Foundation

class Rechteck{
    
    // Eigenschaften
    var x : Double
    
    var y : Double
    
    // prüfen, ob x und y größer oder gleich 0.0 sind, vermeiden von negativen Zahlen
    init(x: Double, y: Double) {
        self.x = x >= 0.0 ? x : 0.0
        self.y = y >= 0.0 ? y : 0.0
    }
    
    func fläche() -> Double{
        return x * y
    }
    
    func kantenlänge() -> Double{
        return x + x + y + y
    }
}
