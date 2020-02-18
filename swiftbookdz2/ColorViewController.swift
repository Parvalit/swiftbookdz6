//
//  ColorViewController.swift
//  swiftbookdz2
//
//  Created by Коstya on 17.02.2020.
//  Copyright © 2020 Коstya. All rights reserved.
//

import UIKit

protocol ColorViewControllerDelegate {
    func giveColor(color: UIColor)
}

class ColorViewController: UIViewController {
    
    var backGround = UIColor()
    var delegate: ColorViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = backGround
    }
    

    @IBAction func BackViewController(_ sender: UIButton) {
        delegate?.giveColor(color: backGround)
        dismiss(animated: true, completion: nil)
        
    }
    

}
