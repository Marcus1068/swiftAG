//
//  BankKonto.swift
//  swiftAG
//
//  Created by Marcus Deuß on 12.02.20.
//  Copyright © 2020 Marcus Deuß. All rights reserved.
//

import Foundation


// Ein Bankkonto soll folgende Möglichkeiten bieten:
// Gewünschte Fähigkeiten:
// 1. Konto eröffnen
// 2. Kontostand anzeigen lassen
// 3. Geld einzahlen auf Konto
// 4. Geld abheben vom Konto
// 5. Geld vom eigenen Konto auf ein anderes Konto überweisen

class BankKonto{
    // Eigenschaften
    
    // die neue Kontonummer, muss eindeutig sein, zwei Personen dürfen nie die selbe Nummer haben
    private(set) var kontoNummer: Int = 0
    
    // der Eigentümer Name des Kontos
    var besitzer: Person
    
    // der aktuelle Kontostand
    private(set) var kontoStand: Double = 0.0
    
    // initiale Bankkonto Nummer
    private static var seed = 1000
    
    // Initialisierung
    
    init(besitzer: Person){
        kontoNummer = BankKonto.seed    // Kontonummer wird automatisch erzeugt
        BankKonto.seed += 1             // danach +1, damit neues Konto anders lautet
        self.besitzer = besitzer        // Besitzer zuweisen
        kontoStand = 0.0                // und initialer Kontostand = 0.0
    }
    
    // direkt einen Startbetrag einzahlen beim Anlegen des Objektes
    init(besitzer: Person, einzahlung: Double){
        kontoNummer = BankKonto.seed    // Kontonummer wird automatisch erzeugt
        BankKonto.seed += 1             // danach +1, damit neues Konto anders lautet
        self.besitzer = besitzer        // Besitzer zuweisen
        kontoStand = einzahlung         // und initialer Kontostand = 0.0
    }
    
    // Methoden
    
    func macheAbbuchung(betrag: Double){
        if(kontoStand - betrag >= 0.0){
            kontoStand -= betrag
        }
        else{
            print("so viel Geld ist nicht mehr auf dem Konto!")
        }
    }
    
    func macheEinzahlung(betrag: Double){
        kontoStand += betrag
    }
    
    // aktuellen Kontostand anzeigen
    func zeigeKontostand(){
        print("Der Kontostand von \(besitzer) lautet: \(String(kontoStand))€")
    }
    
    func überweisen(betrag: Double, konto: BankKonto){
        // Geld vom eigenen Konto abbuchen
        macheAbbuchung(betrag: betrag)
        // und auf das andere Konto überweisen
        konto.macheEinzahlung(betrag: betrag)
    }
}

