//
//  Dossier.swift
//  DossierApp
//
//  Created by Daniel Kwolek on 9/8/16.
//  Copyright © 2016 Arcore. All rights reserved.
//

import Foundation

class Dossier {
    var name: String?
    var lastKnownLocation: String?
    var occupation: String?
    var knownAssociates: Array<String>
    var languagesSpoken: Array<String>
    
    init() {
        name = nil
        lastKnownLocation = nil
        occupation = nil
        knownAssociates = [""]
        languagesSpoken = [""]
    }
    
    
    func setName(temp: String) {
        name = temp
    }
    func setLastKnownLocation(temp: String) {
        lastKnownLocation = temp
    }
    
    func setOccupation(temp: String) {
        occupation = temp
    }
    
    func addKnownAssociate(temp: String) {
        knownAssociates.append(", \(temp)")
    }
    
    func addLanguageSpoken(temp: String) {
        languagesSpoken.append(", \(temp)")
    }
    
    
    func returnKnownAssociateString() -> String {
        return knownAssociates.joined(separator: ", ")
    }
    
    func setKnownAssociates(CommaSeparatedAssociates: String) {
        knownAssociates.removeAll()
        knownAssociates = CommaSeparatedAssociates.components(separatedBy: ", ")
    }
    
    
    func returnLanguagesSpokenString() -> String {
        return languagesSpoken.joined(separator: ", ")
    }
    
    func setLanguagesSpoken(CommaSeparatedLanguages: String) {
        languagesSpoken.removeAll()
        languagesSpoken = CommaSeparatedLanguages.components(separatedBy: ", ")
    }
    
    
    
}
