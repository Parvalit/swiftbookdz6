//
//  ViewController.swift
//  swiftbookdz2
//
//  Created by Коstya on 31.01.2020.
//  Copyright © 2020 Коstya. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ColorViewControllerDelegate {

    @IBOutlet weak var lableOne: UILabel!
    @IBOutlet weak var lableTwo: UILabel!
    @IBOutlet weak var lableTree: UILabel!
    
    @IBOutlet weak var sliderOne: UISlider!
    @IBOutlet weak var sliderTwo: UISlider!
    @IBOutlet weak var sliderTree: UISlider!
    
    @IBOutlet weak var viewColor: UIView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sliderOne.minimumValue = 0
        sliderOne.maximumValue = 1
        sliderOne.value = 1
        sliderOne.thumbTintColor = .red
        sliderOne.minimumTrackTintColor = .red

        sliderTwo.minimumValue = 0
        sliderTwo.maximumValue = 1
        sliderTwo.value = 1
        sliderTwo.thumbTintColor = .green
        sliderTwo.minimumTrackTintColor = .green
        
        sliderTree.minimumValue = 0
        sliderTree.maximumValue = 1
        sliderTree.value = 1
        sliderTree.thumbTintColor = .blue
        sliderTree.minimumTrackTintColor = .blue
        
        lableOne.text = String(sliderOne.value)
        lableTwo.text = String(sliderTwo.value)
        lableTree.text = String(sliderTree.value)
        
        viewColor.backgroundColor = UIColor(red: CGFloat(sliderOne.value), green: CGFloat(sliderTwo.value), blue: CGFloat(sliderTree.value), alpha: CGFloat(1))

    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowColor" {
            let destination = segue.destination as? ColorViewController
            destination!.backGround = viewColor.backgroundColor!
            destination?.delegate = self
        }
    }
    
    func giveColor(color: UIColor) {
        viewColor.backgroundColor = color
    }
    
    
    @IBAction func actionSliderOne(_ sender: Any) {
        lableOne.text = String(format: "%.2f", sliderOne.value)
        viewColor.backgroundColor = UIColor(red: CGFloat(sliderOne.value), green: CGFloat(sliderTwo.value), blue: CGFloat(sliderTree.value), alpha: CGFloat(1))
    }

    @IBAction func actionSliderTwo(_ sender: Any) {
        lableTwo.text = String(format: "%.2f", sliderTwo.value)
        viewColor.backgroundColor = UIColor(red: CGFloat(sliderOne.value), green: CGFloat(sliderTwo.value), blue: CGFloat(sliderTwo.value), alpha: CGFloat(1))
    }
    
    @IBAction func actionSliderTree(_ sender: Any) {
        lableTree.text = String(format: "%.2f", sliderTree.value)
        viewColor.backgroundColor = UIColor(red: CGFloat(sliderOne.value), green: CGFloat(sliderTwo.value), blue: CGFloat(sliderTree.value), alpha: CGFloat(1))
    }

    
}

