//
//  ViewController.swift
//  tableViewInHandH
//
//  Created by Ovsyankinds on 25/07/2017.
//  Copyright © 2017 Ovsyankinds. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel?
    var labelVC: String?
    
    override func viewDidLoad() {
        
        label?.text = labelVC
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

