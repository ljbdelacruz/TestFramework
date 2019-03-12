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
    @IBOutlet weak var AppearingViewDown: AppearingView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.MCView.duration=1;
        self.MCView.myinit(animationDir: .up)
        self.MCView.show()
        
        self.AppearingViewDown.duration=1;
        self.AppearingViewDown.myinit(animationDir: .down);
        self.AppearingViewDown.show();
    }
    var isShown:Bool=true;
    @IBAction func ToggleAnimate(_ sender: Any) {
        self.isShown = !self.isShown
        if self.isShown{
            self.MCView.show();
            self.AppearingViewDown.show();
        }else{
            self.MCView.hide();
            self.AppearingViewDown.hide();
        }
    }
    
}

