//
//  DrawerListInteractor.swift
//  DrawerList
//
//  (c) Ishtiak Ahmed (2020)
//

import UIKit

protocol DrawerListDataStore {
     var name: String? { get set }
}

protocol DrawerListBusinessLogic {
    func doSomething(request: DrawerListScene.Something.Request)
}

class DrawerListInteractor: DrawerListDataStore {
    var name: String?

    // MARK: Instance Properties
    var presenter: DrawerListPresentationLogic?
}

extension DrawerListInteractor: DrawerListBusinessLogic {
    func doSomething(request: DrawerListScene.Something.Request) {
        let response = DrawerListScene.Something.Response()
        presenter?.presentSomething(response: response)
    }
}
