//
//  GalleryImageCollectionViewCell.swift
//  ImageSlideShow
//
//  Created by Hemant kumar on 15/05/23.
//

import UIKit
import SDWebImage

class GalleryImageCollectionViewCell: UICollectionViewCell {

    //MARK: - Outlet's
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    
    
    //MARK: - Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
        configureUI()
    }
    
    //MARK: - Helpers
    private func configureUI() {
        containerView.layer.cornerRadius = 4
        containerView.layer.masksToBounds = true
        
        imageView.layer.cornerRadius = 2
        imageView.layer.masksToBounds = true
    }
    
    func configureData(with url: String) {
        self.imageView.sd_setImage(with: URL(string: url), placeholderImage: #imageLiteral(resourceName: "placeHolder"), options: .highPriority, context: nil)
    }

}
