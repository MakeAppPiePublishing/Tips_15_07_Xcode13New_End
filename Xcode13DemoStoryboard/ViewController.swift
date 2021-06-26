//
//  ViewController.swift
//  Xcode13DemoStoryboard
//
//  Created by Steven Lipton on 6/18/21.
//

import UIKit
import SwiftUI
class ViewController: UIViewController {
    var index = 0
    @IBOutlet weak var image: UIImageView!
    
    
    @IBSegueAction func swiftUI(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: Xcode13SwiftUIView())
    }
    
    @IBAction func barButton0(_ sender: UIBarButtonItem) {
        index = 1
        image.image = UIImage(systemName: model[0] )
    }
    
    @IBAction func barButton1(_ sender: UIBarButtonItem) {
        index = 1
        image.image = UIImage(systemName: model[1] )
        
    }
    @IBAction func barButton2(_ sender: UIBarButtonItem) {
        index = 2
        image.image = UIImage(systemName: model[2] )
    }
    @IBAction func barButton3(_ sender: UIBarButtonItem) {
        index = 3
        image.image = UIImage(systemName: model[3] )
    }
    
    @IBAction func leftButton(_ sender: UIBarButtonItem) {
        index = (index <= 0) ? model.count - 1 : index - 1
        image.image = UIImage(systemName: model[index] )
    }
    
    @IBAction func rightButton(_ sender: UIBarButtonItem) {
        index = (index < model.count - 1) ? index + 1 : 0
        image.image = UIImage(systemName: model[index])
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

