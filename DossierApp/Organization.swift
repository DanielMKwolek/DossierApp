//
//  Organization.swift
//  DossierApp
//
//  Created by Daniel Kwolek on 9/8/16.
//  Copyright © 2016 Arcore. All rights reserved.
//

import Foundation

class Organization {
    var name: String?
    var operatives: Array<Dossier?>
    
    init() {
        name = nil
        operatives = [nil]
    }
    
    func setName(temp: String) {
        name = temp
    }
    
    func addOperative(operative: Dossier) {
        operatives.append(operative)
        if operatives.count > 1 && operatives.first == nil {
            operatives.removeFirst()
        }
    }
    
    func removeOperative(index: Int) {
        if operatives.count == 1 {
            operatives.append(nil)
        }
        operatives.remove(at: index)
    }
}
