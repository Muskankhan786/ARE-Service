//
//  ImageViewController.swift
//  ARE Services
//
//  Created by Muskan on 25/05/23.
//

import UIKit

class ImageViewController: UIViewController {
    
    @IBOutlet weak var imgViewFull: UIImageView!
    
    var imgFull = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imgViewFull.image = self.imgFull
    }
}
