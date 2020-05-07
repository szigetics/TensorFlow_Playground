//
//  MyViewController.swift
//  MaskDetector
//
//  Created by Csaba Szigeti on 2020. 05. 07..
//  Copyright © 2020. Csaba Szigeti. All rights reserved.
//

import UIKit
import SwiftUI

final class MyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension MyViewController: UIViewControllerRepresentable {
    public typealias UIViewControllerType = MyViewController

    func makeUIViewController(context: UIViewControllerRepresentableContext<MyViewController>) -> MyViewController {
        
        return MyViewController()
    }
    
    func updateUIViewController(_ uiViewController: MyViewController, context: UIViewControllerRepresentableContext<MyViewController>) {
        
    }
}
