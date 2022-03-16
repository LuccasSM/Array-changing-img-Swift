//
//  ViewController.swift
//  ArrayImages
//
//  Created by Luccas Santana on 11/02/22.
//

import UIKit

class ViewController: UIViewController {
    
    let header = UIView(frame: .zero)
    
    var imageArr = ["image1","image2"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        header.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(header)
        header.backgroundColor  = .orange
        header.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        header.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        let RandomNumber = Int(arc4random_uniform(UInt32(self.imageArr.count)))
        let image = UIImage.init(named: "\(imageArr[RandomNumber])")
        let imageView = UIImageView.init(image: image)
        imageView.frame = CGRect(x: imageView.frame.origin.x, y: 100, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2 - 50)
        self.view.addSubview(imageView)
        
        imageArr.shuffle()
    }
}
