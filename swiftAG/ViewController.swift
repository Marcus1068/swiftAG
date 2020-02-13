//
//  ViewController.swift
//  swiftAG
//
//  Created by Marcus Deuß on 12.02.20.
//  Copyright © 2020 Marcus Deuß. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        testeBankkonto()
        
        testePerson()
        
        testeRechteck()
        
        testeTemperatur()
        
        testeZahlen()
    }

    func testeZahlen(){
        let zahl1 = Zahlen(binär: "0101")
        
        print(zahl1.dezimal)
        
        let zahl2 = Zahlen(dezimal: 12)
        print(zahl2.dezimal)
        
        let zahl3 = Zahlen(hexadezimal: "FF")
        print(zahl3.dezimal)
        print(zahl3.binär)
        
        let zahl4 = Zahlen(dezimal: 255)
        print(zahl4.hexadezimal)
        print(zahl4.binär)
        
        let z = Zahlen(dezimal: 16)
        print(z)
        
    }
    
    func testeTemperatur(){
        let t = Temperatur(celsius: 0.0)
        print("Fahrenheit = \(t.fahrenheit)")
        print("Kelvin = \(t.kelvin)")
        
        let t2 = Temperatur(fahrenheit: 100.0)
        print("Celsius = \(t2.celsius)")
        print("Kelvin = \(t2.kelvin)")
        
        print(t)
    }
    
    func testeRechteck(){
    
        let meinRechteck = Rechteck(x: 10.0, y: 25.0)
        
        print(meinRechteck.fläche())
        print(meinRechteck.kantenlänge())
    }
    
    func testePerson(){
        
        let marcus = Person(nachName: "Deuß", vorName: "Marcus", geburtsDatum: dateFromString(date: "02/10/1968"), geburtsOrt: "Bremen", geschlecht: .männlich)
        
        print("Person: \(marcus.vorName) ist \(marcus.alterInJahren) Jahre alt")
        
        let sandra = Person(nachName: "Deuß", vorName: "Sandra", geburtsDatum: dateFromString(date: "10/11/1976"), geburtsOrt: "Düsseldorf", geschlecht: .weiblich)
        
        print("Person: \(sandra.vorName) ist \(sandra.alterInJahren) Jahre alt")
        
        print(marcus)
        
    }

    func testeBankkonto(){
        // Testen der Konto Klasse
        
        let marcus = Person(nachName: "Deuß", vorName: "Marcus", geburtsDatum: dateFromString(date: "02/10/1968"), geburtsOrt: "Bremen", geschlecht: .männlich)

        let konto1 = BankKonto(besitzer: marcus)
        
        let sandra = Person(nachName: "Deuß", vorName: "Sandra", geburtsDatum: dateFromString(date: "10/11/1976"), geburtsOrt: "Düsseldorf", geschlecht: .weiblich)

        let konto2 = BankKonto(besitzer: sandra)

        print(konto1.besitzer)
        print(konto1.kontoNummer)


        print(konto2.kontoNummer)
        konto1.macheEinzahlung(betrag: 200.0)
        konto1.macheAbbuchung(betrag: 100.0)
        konto1.macheAbbuchung(betrag: 13.20)


        konto2.macheEinzahlung(betrag: 500.0)

        print(konto1.kontoStand)
        print(konto2.kontoStand)

        konto1.überweisen(betrag: 45.0, konto: konto2)
        print(konto1.kontoStand)
        print(konto2.kontoStand)
        
        print(konto1)
    }
    
    func dateFromString(date: String) -> Date{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        let dateFromString = dateFormatter.date(from: date)!
        
        return dateFromString
    }
}

