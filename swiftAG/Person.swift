//
//  Person.swift
//  swiftAG
//
//  Created by Marcus Deuß on 12.02.20.
//  Copyright © 2020 Marcus Deuß. All rights reserved.
//

import Foundation

// eine Aufzählung definieren für das Geschlecht
enum Geschlecht{
    case männlich
    case weiblich
    case drittes
}


// eine Person als Klasse modellieren
class Person{
    
    // Eigenschaften
    var nachName: String
    var vorName: String
    var geburtsDatum: Date
    var geburtsOrt: String
    var geschlecht: Geschlecht
    
    // Alter wird berechnet, ist auch nur lesbar, nicht veränderbar
    public var alterInJahren: Int{
        get {
            let interval = Date() - geburtsDatum
            //print(interval.year)
            return interval.year ?? 0
            
        }
            
    }
    
    // initilisieren
    init(nachName: String, vorName: String, geburtsDatum: Date, geburtsOrt: String, geschlecht: Geschlecht){
        self.nachName = nachName
        self.vorName = vorName
        self.geburtsDatum = geburtsDatum
        self.geburtsOrt = geburtsOrt
        self.geschlecht = geschlecht
    }
    
    
}

// Date erweitern, damit wir die Anzahl der Jahre (oder Tage, Monate) zwischen zwei Daten berechnen können
extension Date {

    static func -(recent: Date, previous: Date) -> (year: Int?, month: Int?, day: Int?, hour: Int?, minute: Int?, second: Int?) {
        let day = Calendar.current.dateComponents([.day], from: previous, to: recent).day
        let month = Calendar.current.dateComponents([.month], from: previous, to: recent).month
        let year = Calendar.current.dateComponents([.year], from: previous, to: recent).year
        let hour = Calendar.current.dateComponents([.hour], from: previous, to: recent).hour
        let minute = Calendar.current.dateComponents([.minute], from: previous, to: recent).minute
        let second = Calendar.current.dateComponents([.second], from: previous, to: recent).second

        return (year: year, month: month, day: day, hour: hour, minute: minute, second: second)
    }

}
