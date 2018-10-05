//
//  ViewController.swift
//  CoreML
//
//  Created by Inna Kuts on 10/5/18.
//  Copyright © 2018 Inna Kuts. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pictureImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    
    let images = ["cat.jpg", "dog.jpg", "rat.jpg", "banana.jpg"]
    var index = 0
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        if index > self.images.count {
            index = 0
        }
        
        let image = UIImage(named: images[index])
        self.pictureImageView.image = image
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        localize()
        // Do any additional setup after loading the view, typically from a nib.
    }


    private func localize() {
        nextButton.setTitle("Next", for: .normal)
    }
}

