//
//  ListTableViewCell.swift
//  DemoOne
//
//  Created by Apple on 15/06/21.
//

import UIKit

class ListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imgList: UIImageView!
    @IBOutlet weak var lblText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func configure(data: DataSource) {
        lblText.text = data.name
        imgList.image = UIImage(named: data.image)
    }
}
