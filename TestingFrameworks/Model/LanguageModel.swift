//
//  LanguageModel.swift
//  TestingFrameworks
//
//  Created by Lainel John Dela Cruz on 13/03/2019.
//  Copyright © 2019 Lainel John Dela Cruz. All rights reserved.
//

import Foundation
import UIKit
class LanguageModel{
    var label:String?;
    var image:UIImage?;
    init() {
    }
    convenience init(label:String, image:UIImage){
        self.init();
        self.label=label;
        self.image=image;
    }
    
    static func setupArray()->[LanguageModel]{
        var array:[LanguageModel]=[];
        array.append(LanguageModel(label: "English", image: #imageLiteral(resourceName: "flag_english")))
        array.append(LanguageModel(label: "Khmer", image: #imageLiteral(resourceName: "flag_cambodia")))
        return array;
    }
}
