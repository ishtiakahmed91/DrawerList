//
//  DrawerListViewController.swift
//  DrawerList
//
//  (c) Ishtiak Ahmed (2020)
//

import UIKit

protocol DrawerListDisplayLogic: class {
    func displaySomething(viewModel: DrawerListScene.Something.ViewModel)
}

class DrawerListViewController: UIViewController {
    // MARK: Instance Properties
    var interactor: DrawerListBusinessLogic?
    var router: (NSObjectProtocol & DrawerListRoutingLogic & DrawerListDataPassing)?
    private let items: [DrawerListItem]? = nil

    // MARK: Object Life Cycle
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        sceneSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        sceneSetup()
    }
    
    // MARK: View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        doSomething()
    }

}

// MARK: - Private Functions
private extension DrawerListViewController {
    func doSomething() {
        let request = DrawerListScene.Something.Request()
        interactor?.doSomething(request: request)
    }
}

// MARK: - Display Logic
extension DrawerListViewController: DrawerListDisplayLogic {
    func displaySomething(viewModel: DrawerListScene.Something.ViewModel) {
        //nameTextField.text = viewModel.name
    }
}
