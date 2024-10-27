//
//  ViewController.swift
//  Weather App
//
//  Created by Gabi on 26/10/24.
//

import UIKit

class ViewController: UIViewController {
    
//    private let customView = UIView(frame: .zero)
    
    private lazy var customView: UIView = {
        let view = UIView(frame: .zero)
        view.backgroundColor = .gray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() { //Método executado quando o ViewController for carregado
        super.viewDidLoad()
        
        setupView()
    }
    
    override func viewDidAppear(_ animated: Bool) { //É executado toda vez que a ViewController aparece na tela
        super.viewDidAppear(animated)
    }

    override func viewWillAppear(_ animated: Bool) { //É executado antes da ViewController aparecer na tela
        super.viewWillAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    private func setupView() {
//        let customView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100)) <-definindo a view com a posição e com altura e largura
        
//        let customView = UIView(frame: .zero)
//        customView.backgroundColor = .gray
//        customView.translatesAutoresizingMaskIntoConstraints = false //Essa propriedade deve ser desligada nesse caso para não criar uma constraint a partir do frame que tem valor 0
//        view.addSubview(customView)
        
//        NSLayoutConstraint.activate([
//            customView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
//            customView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
//            customView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
//            customView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100)
//        ])
        setHierarchy()
        setConstraints()
    }
    
    private func setHierarchy(){
        view.addSubview(customView)
    }
    
    private func setConstraints(){
        NSLayoutConstraint.activate([
            customView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            customView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            customView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
            customView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100)
        ])
    }
}

