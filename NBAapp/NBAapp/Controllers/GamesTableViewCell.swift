//
//  GamesTableViewCell.swift
//  NBAapp
//
//  Created by Руслан Сафин on 13.11.2021.
//

import UIKit

class GamesTableViewCell: UITableViewCell {
    
    //MARK: - Outlets
    @IBOutlet weak var attackFavorite: UIImageView!
    @IBOutlet weak var deffFavorite: UIImageView!
    @IBOutlet weak var teamOneLabel: UILabel!
    @IBOutlet weak var teamTwoLabel: UILabel!
    @IBOutlet weak var teamOneImage: UIImageView!
    @IBOutlet weak var teamTwoImage: UIImageView!
    @IBOutlet weak var totalScore: UILabel!
    
    func configure(with game: Game) {
        teamOneLabel.text = game.attackers
        teamTwoLabel.text = game.defenders
        teamOneImage.image = UIImage(named: game.logoAttack)
        teamTwoImage.image = UIImage(named: game.logoDeff)
        totalScore.text = game.score
        
        if game.attackIsFavorite {
            attackFavorite.isHidden = false
        } else {
            attackFavorite.isHidden = true
        }
        
        if game.deffIsFavorite {
            deffFavorite.isHidden = false
        } else {
            deffFavorite.isHidden = true
        }
    }
}
