//
//  leftCell.swift
//  GameOfThrones
//
//  Created by Amy Alsaydi on 11/19/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class LeftCell: UITableViewCell {
    
// these are connected but the circle is not filled?? 
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var leftEpisodeName: UILabel!
    @IBOutlet weak var leftEpisodeNum: UILabel!
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    func configureCell(for episode: GOTEpisode) {
        leftImageView.image = UIImage(named: episode.mediumImageID)
        leftEpisodeName.text = episode.name
        leftEpisodeNum.text = "S:\(episode.season) E:\(episode.number)"
    
    }
    
}
