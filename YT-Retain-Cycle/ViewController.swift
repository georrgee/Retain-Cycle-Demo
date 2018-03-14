//
//  ViewController.swift
//  YT-Retain-Cycle
//
//  Created by George Garcia on 3/13/18.
//  Copyright © 2018 GTeam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var george: Person?
    var vicki: Macbook?
    
    func createObjects(){
        
        george = Person(name: "George", macbook: nil)
        vicki = Macbook(macbookName: "Vicki", owner: nil)
    }
    
    func assignProperties(){
        
        george?.macbook = vicki
        vicki?.owner = george
        
        george = nil
        vicki = nil
        print(vicki?.owner) //vicki's owner is nil since george is gone (nil)
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createObjects()
        assignProperties()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

