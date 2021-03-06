//
//  ViewController.swift
//  UISlider
//
//  Created by Никита Коголенок on 16.12.20.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - Outlet
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var slider: UISlider!
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        slider.value = 0
        // label
        label.text = String(slider.value)
        label.font = label.font.withSize(35)
        label.textAlignment = .center
        label.numberOfLines = 3
        // segmentedControl
        segmentedControl.insertSegment(withTitle: "Third", at: 2, animated: true)
        // slider
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.minimumTrackTintColor = .yellow
        slider.maximumTrackTintColor = .red
        slider.thumbTintColor = .blue
        
    }
    // MARK: - Action
    @IBAction func choiceSegment(_ sender: UISegmentedControl) {
        label.isHidden = false
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            label.text = "The first segment is selected!"
            label.textColor = .red
        case 1:
            label.text = "The second segment is selected!"
            label.textColor = .yellow
        case 2:
            label.text = "The third segment is selected!"
            label.textColor = .green
        default:
            print("Something wrong!")
        }
    }
    @IBAction func sliderAction(_ sender: UISlider) {
        label.text = String(sender.value)
        
        let backgroundColor = self.view.backgroundColor
        self.view.backgroundColor = backgroundColor?.withAlphaComponent(CGFloat(sender.value))
    }
}

