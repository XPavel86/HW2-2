//
//  ViewController.swift
//  HW2-2
//
//  Created by Pavel Dolgopolov on 12.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var red: UIView!
    @IBOutlet var green: UIView!
    @IBOutlet var yellow: UIView!
    
    @IBOutlet var changeСolorButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeСolorButton.layer.cornerRadius = 10
        
        [red, green, yellow].forEach( { item in
            item.alpha = 0.3
            item.layer.cornerRadius = item.layer.frame.width / 2.0
        } )
        
    }
    
    // вылетает ошибка: changeСolorButtonDidTapped(changeСolorButton)
    @IBAction func changeСolorButtonDidTapped(_ sender: UIButton) {
        
        sender.setTitle("NEXT", for: .normal)
    }
    
    }
    


