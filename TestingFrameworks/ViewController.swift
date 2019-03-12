//
//  ViewController.swift
//  TestingFrameworks
//
//  Created by Lainel John Dela Cruz on 11/03/2019.
//  Copyright © 2019 Lainel John Dela Cruz. All rights reserved.
//

import UIKit
import UIViewComponents

class ViewController: UIViewController {
    
    @IBOutlet weak var MCView: AppearingView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.MCView.duration=1;
        self.MCView.myinit(animationDir: .up)
        self.MCView.show()
    }
    var isShown:Bool=true;
    @IBAction func ToggleAnimate(_ sender: Any) {
        self.isShown = !self.isShown
        if self.isShown{
            self.MCView.show();
        }else{
            self.MCView.hide();
        }
    }
    
}

