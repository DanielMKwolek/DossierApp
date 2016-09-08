//
//  DossierViewController.swift
//  DossierApp
//
//  Created by Daniel Kwolek on 9/8/16.
//  Copyright © 2016 Arcore. All rights reserved.
//

import UIKit

class DossierViewController: UIViewController, UITextViewDelegate, UITextFieldDelegate{
    @IBOutlet var nameField: UITextField!
    @IBOutlet var lastKnownLocationField: UITextField!
    @IBOutlet var occupationField: UITextField!
    @IBOutlet var knownAssociatesField: UITextView!
    @IBOutlet var languagesSpokenField: UITextView!
    var agent: Dossier = Dossier.init()
    
    
    
    override func viewDidLoad() {
        nameField.delegate = self
        lastKnownLocationField.delegate = self
        occupationField.delegate = self
        knownAssociatesField.delegate = self
        languagesSpokenField.delegate = self
        super.viewDidLoad()
        
        updatetext()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    func updatetext(){
        nameField.text = "\(agent.name ?? "Unknown")"
        lastKnownLocationField.text = "\(agent.lastKnownLocation ?? "Unknown")"
        occupationField.text = "\(agent.occupation ?? "Unknown")"
        knownAssociatesField.text = agent.returnKnownAssociateString()
        languagesSpokenField.text = agent.returnLanguagesSpokenString()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textViewShouldEndEditing(_ textView: UITextView) -> Bool {
        switch textView {
        case knownAssociatesField:
            agent.setKnownAssociates(CommaSeparatedAssociates: knownAssociatesField.text)
        case languagesSpokenField:
            agent.setLanguagesSpoken(CommaSeparatedLanguages: languagesSpokenField.text)
        default:
            break
        }
        textView.resignFirstResponder()
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        switch textField {
        case nameField:
            agent.setName(temp: nameField.text!)
        case lastKnownLocationField:
            agent.setLastKnownLocation(temp: lastKnownLocationField.text!)
        case occupationField:
            agent.setOccupation(temp: occupationField.text!)
        default:
            break
        }
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }
    
}

