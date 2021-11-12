//
//  InitialViewController.swift
//  Trivia
//
//  Created by David Viloria Ortega on 29/10/21.
//

import UIKit

class InitialViewController: UIViewController {
    
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .lightGray
        textField.text = "David"
        addLogoConstraints()
        print("viewDidLoad invocado")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear invocado")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear invocado")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear invocado")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear invocado")
    }
    
    func addLogoConstraints(){
        //Evita que se creen constraints automaticamente
        logo.translatesAutoresizingMaskIntoConstraints = false
        //Distancia del logo al borde superior de la vista
        logo.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        //Ancho del logo fijo
        logo.widthAnchor.constraint(equalToConstant: 150).isActive = true
        //Centra el logo horizontalmente respecto a la vista
        let centerHorizontal = logo.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        NSLayoutConstraint.activate([centerHorizontal])
    }
    
    @IBAction func starTrivia(_ sender: Any) {
        if textField.hasText {
            presentTabBarController()
        } else{
            print("Por favot ingrese su nombre de Usuario")
        }
    }
    
    
    private func presentTabBarController(){
        let tabBarController = TabBarViewController()
        tabBarController.modalPresentationStyle = .overFullScreen
        self.present(tabBarController, animated: true)
    }
}
