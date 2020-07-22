//
//  DrawerListRouter.swift
//  DrawerList
//
//  (c) Ishtiak Ahmed (2020)
//

import UIKit

protocol DrawerListDataPassing {
    var dataStore: DrawerListDataStore? { get }
}

class DrawerListRouter: NSObject, DrawerListDataPassing {
    weak var viewController: DrawerListViewController?
    var dataStore: DrawerListDataStore?
}

// MARK: - Private Functions
private extension DrawerListRouter {
//    func navigateToSomewhere(source: DrawerListViewController, destination: SomewhereViewController) {
//        source.show(destination, sender: nil)
//    }
//
//    func passDataToSomewhere(source: DrawerListDataStore, destination: inout SomewhereDataStore) {
//        destination.name = source.name
//    }
}

@objc protocol DrawerListRoutingLogic {
    //func routeToSomewhere(segue: UIStoryboardSegue?)
}

extension DrawerListRouter: DrawerListRoutingLogic {
//    func routeToSomewhere(segue: UIStoryboardSegue?) {
//        if let segue = segue,
//            let destinationVC = segue.destination as? SomewhereViewController,
//            var destinationDS = destinationVC.router?.dataStore {
//
//            passDataToSomewhere(source: dataStore, destination: &destinationDS)
//        } else {
//            let storyboard = UIStoryboard(name: "Main", bundle: nil)
//            if let destinationVC = storyboard.instantiateViewController(withIdentifier: "SomewhereViewController") as? SomewhereViewController,
//                var destinationDS = destinationVC.router?.dataStore {
//                passDataToSomewhere(source: dataStore, destination: &destinationDS)
//                navigateToSomewhere(source: viewController, destination: destinationVC)
//            }
//        }
//    }
}
