//
//  DetailController.swift
//  GameOfThrones
//
//  Created by Amy Alsaydi on 11/19/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class DetailController: UIViewController {

    
    @IBOutlet weak var episodeImage: UIImageView!
    @IBOutlet weak var seasonNum: UILabel!
    @IBOutlet weak var episodeNum: UILabel!
    @IBOutlet weak var runtime: UILabel!
    @IBOutlet weak var airdate: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    
    var episode: GOTEpisode?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI() 

        // Do any additional setup after loading the view.
    }
    
    func updateUI() {
        guard let theEpisode = episode else {
            fatalError("Couldnt get a episode value, verify prepare (for sague: )")
        }
        title = theEpisode.name
        episodeImage.image = UIImage(named: theEpisode.originalImageID)
        seasonNum.text = "Season: \(theEpisode.season.description)"
        episodeNum.text = "Episode: \(theEpisode.number.description)"
        runtime.text = "Runtime: \(theEpisode.runtime)"
        airdate.text = "Airdate: \(theEpisode.airdate)"
        detailLabel.text = theEpisode.summary
        
    }
    

}
