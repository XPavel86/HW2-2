//
//  ViewController.swift
//  HW2-2
//  Created by Pavel Dolgopolov on 12.02.2024.
//

import UIKit

final class ViewController: UIViewController {
    // использование private выдает ошибку
    @IBOutlet var redLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var yellowLight: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        [redLight, greenLight, yellowLight].forEach( {
            item in item.alpha = 0.3
        } )
    }
    
    override func viewWillLayoutSubviews() {
        
        startButton.layer.cornerRadius = 10
        
        [redLight, greenLight, yellowLight].forEach( {
            item in item.layer.cornerRadius = item.layer.frame.width / 2.0
        } )
    }
    
    // вылетает ошибка в таком варианте > changeСolorButtonDidTapped(changeСolorButton)
    @IBAction func changeСolorButtonDidTapped(_ sender: UIButton) {
        
        let trafficLights: (_, _, _) -> () = {
            self.redLight.alpha = $0
            self.yellowLight.alpha = $1
            self.greenLight.alpha = $2
        }
        
        if sender.titleLabel?.text != "NEXT"  {
            sender.setTitle("NEXT", for: .normal)
        }
        
        startButton.tag  += 1
        
        switch startButton.tag {
            case 1: trafficLights(1, 0.3, 0.3)
            case 2: trafficLights(0.3, 1, 0.3)
            default:
                trafficLights(0.3, 0.3, 1)
                startButton.tag = 0
        }
    }
}



