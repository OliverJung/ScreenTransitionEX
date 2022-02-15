//
//  CodePresentViewController.swift
//  ScreeenTransitionExample
//
//  Created by OliverJung on 2022/02/15.
//

import UIKit

class CodePresentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
