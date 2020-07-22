//
//  DrawerList+SceneSetup.swift
//  DrawerList
//
//  (c) Ishtiak Ahmed (2020)
//

import UIKit

extension DrawerListViewController {
    func sceneSetup() {
        let viewController = self
        let interactor = DrawerListInteractor()
        let presenter = DrawerListPresenter()
        let router = DrawerListRouter()

        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
    }
}
