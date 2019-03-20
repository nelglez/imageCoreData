//
//  ImageTableViewCell.swift
//  imageCoreData
//
//  Created by Nelson Gonzalez on 3/20/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import UIKit

class ImageTableViewCell: UITableViewCell {

    @IBOutlet weak var imageImageView: UIImageView!
    
    var post: Post? {
        didSet {
            updateViews()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateViews() {
        guard let post = post, let imageData = post.imageData else {return}
        
        imageImageView.image = UIImage(data: imageData)
    }

}
