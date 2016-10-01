//
//  ViewController.swift
//  test
//
//  Created by george on 01/10/2016.
//  Copyright © 2016 george. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController
{
    @IBOutlet weak var label1: UILabel!
    
    let rootRef = FIRDatabase.database().reference()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let conditionRef = rootRef.child("type")
        conditionRef.observe(.value)
        {
            (snap: FIRDataSnapshot) in
            let text = (snap.value as AnyObject).description as? String
            //text = String(format: "%zd", text!)
            self.label1.text = text
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

