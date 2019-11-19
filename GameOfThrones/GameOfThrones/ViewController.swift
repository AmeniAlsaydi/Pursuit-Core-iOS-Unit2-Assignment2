//
//  ViewController.swift
//  GameOfThrones
//
//  Created by Alex Paul on 11/16/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var seasons = [[GOTEpisode]]() {
        didSet { // using didSet{...} property observer to reload the table view
            tableView.reloadData()
        }
    }
    
  override func viewDidLoad() {
    super.viewDidLoad()
    
    loadData()
    
    tableView.dataSource = self
    tableView.delegate = self

  }
    
    func loadData() {
       seasons = GOTEpisode.getSeasons()
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return seasons[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       let episode = seasons[indexPath.section][indexPath.row]
        
        if episode.season % 2 == 0 {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "leftCell", for: indexPath) as? LeftCell // or rightCell ... need to alternate between the two (using module) for each section 
            else {
             fatalError("could not dequeue a LeftCell")
         }
        cell.configureCell(for: episode)
        return cell
        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "rightCell", for: indexPath) as? RightCell // or rightCell ... need to alternate between the two (using module) for each section
                else {
                 fatalError("could not dequeue a RightCell")
             }
            cell.configureCell(for: episode)
            return cell
        }
       
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return seasons.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
       
        return "Season \(seasons[section].first?.season.description ?? "1")"
        
    }

}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}
