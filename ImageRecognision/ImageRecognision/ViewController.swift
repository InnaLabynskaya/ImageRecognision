//
//  ViewController.swift
//  ImageRecognision
//
//  Created by Inna Kuts on 10/5/18.
//  Copyright © 2018 Inna Kuts. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var pictureImageView: UIImageView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    
    let images = ["cat.jpg", "dog.jpg", "rat.jpg", "banana.jpg"]
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func nextButtonPressed(_ sender: UIButton) {
        if index > self.images.count - 1 {
            index = 0
        }
        let image = UIImage(named: images[index])
        self.pictureImageView.image = image
        
        let resizedImage = image?.resizeTo(size: CGSize(width: 299, height: 299))
        
        index = index + 1
    }
    
}

