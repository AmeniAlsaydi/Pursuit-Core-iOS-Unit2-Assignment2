//
//  RightCell.swift
//  GameOfThrones
//
//  Created by Amy Alsaydi on 11/19/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class RightCell: UITableViewCell {

    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var rightEpisodeName: UILabel!
    @IBOutlet weak var rightEpisodeNum: UILabel!
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    func configureCell(for episode: GOTEpisode) {
        rightImageView.image = UIImage(named: episode.mediumImageID)
        rightEpisodeName.text = episode.name
        rightEpisodeNum.text = "S:\(episode.season) E:\(episode.number)"
    }

}
