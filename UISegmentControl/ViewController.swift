//
//  ViewController.swift
//  UISegmentControl
//
//  Created by Vitalii Navrotskyi on 04.05.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slider.value = 1
        
//        label.isHidden = true
        label.text = String(slider.value)
        label.font = label.font.withSize(20)
        label.textAlignment = .center
        label.numberOfLines = 2
        
        segmentControl.insertSegment(withTitle: "Third", at: 2, animated: true)
        
        slider.minimumValue = 0
        slider.maximumValue = 1
        slider.minimumTrackTintColor = .yellow
        slider.maximumTrackTintColor = .red
        slider.tintColor = .blue
        
    }

    @IBAction func choiceSegment(_ sender: UISegmentedControl) {
        
        label.isHidden = false
        
        switch segmentControl.selectedSegmentIndex {
        case 0:
            label.text = "The 1st segment is selected"
            label.textColor = .red
        case 1:
            label.text = "The 2st segment is selected"
            label.textColor = .blue
        case 2:
            label.text = "The 3rd segment is selected"
            label.textColor = .darkGray
        default:
            label.text = "Not segement is selected"
        }
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
        label.text = String(sender.value)
        
        let bgColor = self.view.backgroundColor
        self.view.backgroundColor = bgColor?.withAlphaComponent(CGFloat(sender.value))
    }
}

