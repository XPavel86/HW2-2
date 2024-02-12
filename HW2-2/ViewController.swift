//
//  ViewController.swift
//  HW2-2
//
//  Created by Pavel Dolgopolov on 12.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var yellowLight: UIView!
    
    @IBOutlet var changeСolorButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeСolorButton.layer.cornerRadius = 10
        
        [redLight, greenLight, yellowLight].forEach( { item in
            item.alpha = 0.3
            item.layer.cornerRadius = item.layer.frame.width / 2.0
        } )
        
    }
    
    var pressCount = 0
    
    // вылетает ошибка: changeСolorButtonDidTapped(changeСolorButton)
    @IBAction func changeСolorButtonDidTapped(_ sender: UIButton) {
        
        sender.setTitle("NEXT", for: .normal)
        
        pressCount += 1
        
        let trafficLights: (_, _, _) -> () = {
            self.redLight.alpha = $0
            self.yellowLight.alpha = $1
            self.greenLight.alpha = $2
        }
        
        switch pressCount {
        case 1: trafficLights(1, 0.3, 0.3)
        case 2: trafficLights(0.3, 1, 0.3)
        case 3: trafficLights(0.3, 0.3, 1)

        default:
            pressCount = 0
            trafficLights(0.3, 0.3, 0.3)
            sender.setTitle("START", for: .normal)
        }
        
    }
    
    }
    


