//
//  PresentationAssembly.swift
//  TestingFrameworks
//
//  Created by Lainel John Dela Cruz on 13/03/2019.
//  Copyright © 2019 Lainel John Dela Cruz. All rights reserved.
//
import Foundation
import Swinject
import SwinjectStoryboard
import SwinjectAutoregistration

class PresentationAssembly: Assembly {
    func assemble(container: Container) {
        container.autoregister(APIVCPresenter.self, initializer: APIVCPresenter.init)
    }
}

extension SwinjectStoryboard {
    public static func setup() {
        defaultContainer.storyboardInitCompleted(APIViewController.self){ (r, c) in
            c.presenter=r.resolve(APIVCPresenter.self);
        }
    }
    
}
