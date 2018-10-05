//
//  UIImage+Additions.swift
//  ImageRecognision
//
//  Created by Inna Kuts on 10/5/18.
//  Copyright © 2018 Inna Kuts. All rights reserved.
//

import UIKit

extension UIImage {
    
    func resizeTo(size: CGSize) -> UIImage {
        UIGraphicsBeginImageContext(size)
        self.draw(in: CGRect(origin: CGPoint.zero, size: size))
        let resizedImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return resizedImage
    }
}
