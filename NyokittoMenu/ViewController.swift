//
//  ViewController.swift
//  NyokittoMenu
//
//  Created by JotaroSugiyama on 2020/05/31.
//  Copyright © 2020 JotaroSugiyama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func tappedButton() {
        presentPanModal(NyokittoViewController())
    }
    
}


