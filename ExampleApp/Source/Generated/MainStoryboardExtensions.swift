//
//  MainStoryboardExtensions.swift
//
//  This file is automatically generated; do not modify.
//

import UIKit

private let sharedStoryboardInstance = UIStoryboard(name: "Main", bundle: nil)

private class InitializeBlockObject {
    
    let block: (UIViewController -> Void)
    
    init(block: (UIViewController -> Void)) {
        self.block = block
    }
    
}

extension WelcomeViewController {
    
    final class func instantiateViewControllerFromStoryboard(@noescape initialize: ((welcomeViewController: WelcomeViewController) -> Void) = {_ in}) -> WelcomeViewController {
        let viewController = sharedStoryboardInstance.instantiateViewControllerWithIdentifier("WelcomeViewController") as! WelcomeViewController
        initialize(welcomeViewController: viewController)
        return viewController
    }
    
    // Segues
    
    func handleSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let initializeBlockObject = sender as? InitializeBlockObject {
            initializeBlockObject.block(segue.destinationViewController)
        }
    }
    
}