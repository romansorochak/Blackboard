//
//  TableStoryboardExtensions.swift
//
//  This file is automatically generated; do not modify.
//

import UIKit

private let sharedStoryboardInstance = UIStoryboard(name: "Table", bundle: nil)

private class InitializeBlockObject {
    
    let block: (UIViewController -> Void)
    
    init(block: (UIViewController -> Void)) {
        self.block = block
    }
    
}

extension NameViewController {
    
    final class func instantiateViewControllerFromStoryboard(@noescape initialize: ((nameViewController: NameViewController) -> Void) = {_ in}) -> NameViewController {
        let viewController = sharedStoryboardInstance.instantiateViewControllerWithIdentifier("NameViewController") as! NameViewController
        initialize(nameViewController: viewController)
        return viewController
    }
    
    // Segues
    
    func handleSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let initializeBlockObject = sender as? InitializeBlockObject {
            initializeBlockObject.block(segue.destinationViewController)
        }
    }
    
}

extension NamesViewController {
    
    final class func instantiateViewControllerFromStoryboard(@noescape initialize: ((namesViewController: NamesViewController) -> Void) = {_ in}) -> NamesViewController {
        let viewController = sharedStoryboardInstance.instantiateViewControllerWithIdentifier("NamesViewController") as! NamesViewController
        initialize(namesViewController: viewController)
        return viewController
    }
    
    final class func instantiateNavigationControllerFromStoryboard(@noescape initialize: ((namesViewController: NamesViewController) -> Void) = {_ in}) -> UINavigationController {
        let navigationController = sharedStoryboardInstance.instantiateViewControllerWithIdentifier("NamesNavigationController") as! UINavigationController
        let viewController = navigationController.viewControllers.first as! NamesViewController
        initialize(namesViewController: viewController)
        return navigationController
    }
    
    // Segues
    
    enum SegueIdentifier: String {
        case ShowName = "ShowName"
    }
    
    func handleSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let initializeBlockObject = sender as? InitializeBlockObject {
            initializeBlockObject.block(segue.destinationViewController)
        }
    }
    
    final func performShowNameSegue(initialize: ((NameViewController) -> Void) = {_ in}) {
        let initializeBlock = InitializeBlockObject() {
            initialize($0 as! NameViewController)
        }
        performSegueWithIdentifier(SegueIdentifier.ShowName.rawValue, sender: initializeBlock)
    }
    
    // Table View Cells
    
    enum TableViewCellIdentifier: String {
        case Name = "Name"
    }
    
    final func dequeueNameCellFrom(tableView: UITableView, forIndexPath indexPath: NSIndexPath, @noescape initialize: ((nameCell: NameTableViewCell) -> Void) = {_ in}) -> NameTableViewCell {
        let tableViewCell = tableView.dequeueReusableCellWithIdentifier(TableViewCellIdentifier.Name.rawValue, forIndexPath: indexPath) as! NameTableViewCell
        initialize(nameCell: tableViewCell)
        return tableViewCell
    }
    
}