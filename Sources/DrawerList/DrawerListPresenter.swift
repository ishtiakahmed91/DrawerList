//
//  DrawerListPresenter.swift
//  DrawerList
//
//  (c) Ishtiak Ahmed (2020)
//

import UIKit

protocol DrawerListPresentationLogic {
    func presentSomething(response: DrawerListScene.Something.Response)
}

class DrawerListPresenter {
    weak var viewController: DrawerListDisplayLogic?
}

extension DrawerListPresenter: DrawerListPresentationLogic {
    func presentSomething(response: DrawerListScene.Something.Response) {
        let viewModel = DrawerListScene.Something.ViewModel()
        viewController?.displaySomething(viewModel: viewModel)
    }
}
