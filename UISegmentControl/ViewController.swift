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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.isHidden = true
        label.font = label.font.withSize(20)
        label.textAlignment = .center
        label.numberOfLines = 2
        
        segmentControl.insertSegment(withTitle: "Third", at: 2, animated: true)
        
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
    
}

