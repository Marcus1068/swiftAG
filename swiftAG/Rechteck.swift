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
    
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
    
    func fläche() -> Double{
        return x * y
    }
    
    func kantenlänge() -> Double{
        return x + x + y + y
    }
}
