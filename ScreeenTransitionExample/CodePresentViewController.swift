//
//  CodePresentViewController.swift
//  ScreeenTransitionExample
//
//  Created by OliverJung on 2022/02/15.
//

import UIKit

protocol SendDataDelegate: AnyObject{
    func SendData(name:String)
}

class CodePresentViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    var name: String?
    weak var delegate: SendDataDelegate? // Delegate 앞에는 waek를 붙여줘야함
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name{
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }
        
    }
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.delegate?.SendData(name: "Oliver")
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
