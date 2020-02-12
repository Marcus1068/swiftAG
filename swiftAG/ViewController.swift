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
    }

    func testePerson(){
        var dateString = "02/10/1968"
        var dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        var dateFromString = dateFormatter.date(from: dateString)!
        
        let marcus = Person(nachName: "Deuß", vorName: "Marcus", geburtsDatum: dateFromString, geburtsOrt: "Bremen", geschlecht: Geschlecht.männlich)
        
        print("Person: \(marcus.vorName) ist \(marcus.alterInJahren) Jahre alt")
        
        dateString = "10/11/1976"
        dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        dateFromString = dateFormatter.date(from: dateString)!
        
        let sandra = Person(nachName: "Deuß", vorName: "Sandra", geburtsDatum: dateFromString, geburtsOrt: "Düsseldorf", geschlecht: Geschlecht.weiblich)
        
        print("Person: \(sandra.vorName) ist \(sandra.alterInJahren) Jahre alt")
        
    }

    func testeBankkonto(){
        // Testen der Konto Klasse
        
        var dateString = "02/10/1968"
        var dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        var dateFromString = dateFormatter.date(from: dateString)!
        
        let marcus = Person(nachName: "Deuß", vorName: "Marcus", geburtsDatum: dateFromString, geburtsOrt: "Bremen", geschlecht: Geschlecht.männlich)

        let konto1 = BankKonto(besitzer: marcus)

        dateString = "10/11/1976"
        dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        dateFromString = dateFormatter.date(from: dateString)!
        
        let sandra = Person(nachName: "Deuß", vorName: "Sandra", geburtsDatum: dateFromString, geburtsOrt: "Düsseldorf", geschlecht: Geschlecht.weiblich)

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
    }
}

