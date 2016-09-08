//
//  ViewController.swift
//  DossierApp
//
//  Created by Daniel Kwolek on 9/8/16.
//  Copyright © 2016 Arcore. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    var organization: Organization = Organization.init()
    override func viewDidLoad() {
        super.viewDidLoad()
        organization.name = "Evil Incorporated"
        title = organization.name
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! DossierViewController
        switch segue.identifier!{
        case "JohnSegue":
            destination.agent.setName(temp: "John Ze Baptist")
            destination.agent.setOccupation(temp: "Baptist")
            destination.agent.setLastKnownLocation(temp: "Ze river")
            destination.agent.setLanguagesSpoken(CommaSeparatedLanguages: "Hebrew, French, Murican")
            destination.agent.setKnownAssociates(CommaSeparatedAssociates: "Jim Ze Lesser Known Baptist, Sally from that food cart, Uncle Ed")
        case "JimSegue":
            destination.agent.setName(temp: "Jim Smith")
            destination.agent.setOccupation(temp: "Accountant")
            destination.agent.setLastKnownLocation(temp: "His Desk")
            destination.agent.setLanguagesSpoken(CommaSeparatedLanguages: "Excel, English, SQL")
            destination.agent.setKnownAssociates(CommaSeparatedAssociates: "Fred from HR, Jeffery Lloyd, Karen(Wife)")
        
        case "GenghisSegue":
            destination.agent.setName(temp: "Genghis Khan")
            destination.agent.setOccupation(temp: "Conquerer")
            destination.agent.setLastKnownLocation(temp: "Mongolia")
            destination.agent.setLanguagesSpoken(CommaSeparatedLanguages: "Mongolian")
            destination.agent.setKnownAssociates(CommaSeparatedAssociates: "Subutai, Ögedai Khan, Börte")
        default:
            return
        }
    }

}

