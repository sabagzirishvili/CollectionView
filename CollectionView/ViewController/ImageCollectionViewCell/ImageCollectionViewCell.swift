//
//  ImageCollectionViewCell.swift
//  CollectionView
//
//  Created by Admin on 27.02.22.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var flagImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configureCell(with flagImage: ImageModule) {
        self.flagImageView.image = flagImage.imageView
    }
}
