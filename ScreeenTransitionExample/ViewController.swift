//
//  ViewController.swift
//  ScreeenTransitionExample
//
//  Created by OliverJung on 2022/02/15.
//

import UIKit

class ViewController: UIViewController, SendDataDelegate {

    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewController 뷰가 로드 되었다.")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewController 뷰가 나타날것이다.")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("ViewController 뷰가 나타났다.")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("VivewController 뷰가 사라질것이다.")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("ViewController 뷰가 사라졌다.")
    }
    
    @IBAction func tapCodePushButton(_ sender: UIButton) {
        
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePushViewController")
                as? CodePushViewController else {return}
        viewController.name = "Oliver"
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func tapCodePresentButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePresentViewController")
                as? CodePresentViewController else {return}
        viewController.name = "Oliver"
        viewController.delegate = self
        viewController.modalPresentationStyle = .fullScreen
        self.present(viewController, animated: true, completion: nil)
    }
    
    override func prepare(for Segue: UIStoryboardSegue, sender: Any?){
        if let viewController = Segue.destination as? SeguePushViewController{
            viewController.name = "Oliver"
        }
    }
    
    func SendData(name: String) {
        self.nameLabel.text = name
        self.nameLabel.sizeToFit()
    }
}

