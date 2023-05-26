//
//  CollectionViewCell.swift
//  ARE Services
//
//  Created by Muskan on 23/05/23.
//

import UIKit
import AVFoundation

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imgView: UIImageView!
    
    func dataRender(image: UIImage) {
        self.imgView.image = image
    }
}
