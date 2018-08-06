//
//  BaseController.swift
//  MVVM-iTunes
//
//  Created by Moises Apaza on 21/07/2018.
//  Copyright © 2018 Moises Apaza. All rights reserved.
//

import UIKit

class BaseController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeBackground()
    }
    
    private func changeBackground(){
        view.backgroundColor = .white
    }
    
    func changeTitle(title: String){
        self.navigationItem.title = title
        self.navigationController?.navigationBar.tintColor = .darkGray
    }
}
