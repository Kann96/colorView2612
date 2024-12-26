//
//  ViewController.swift
//  colorView2612
//
//  Created by Анастасия Кучер on 26.12.2024.
//

import UIKit

final class ViewController: UIViewController {
    
    // MARK: IBOutlet
    @IBOutlet var сolorRectangle: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLable: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        сolorRectangle.layer.cornerRadius = 10
        setupSlider()
        setupLabel()
    }

    // MARK: IBAction
    @IBAction func redSliderAction() {
        redLabel.text = String(format: "%.2f", redSlider.value)
        сolorRectangle.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    @IBAction func greenSliderAction() {
        greenLable.text = String(format: "%.2f", greenSlider.value)
        сolorRectangle.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    @IBAction func blueSliderAction() {
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        сolorRectangle.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    
    // MARK: - Private Methods
    private func setupSlider() {
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
    }
    
    private func setupLabel() {
        redLabel.text = redSlider.value.formatted()
        greenLable.text = greenSlider.value.formatted()
        blueLabel.text = blueSlider.value.formatted()
    }
}



