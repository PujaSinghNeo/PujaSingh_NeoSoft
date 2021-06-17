//
//  BannerCollectionViewCell.swift
//  DemoOne
//
//  Created by Apple on 17/06/21.
//

import UIKit

class BannerCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imgBanners: UIImageView!
    
    func configure(data: DataBanner) {
        imgBanners.image = UIImage(named: data.banner)
    }
}
