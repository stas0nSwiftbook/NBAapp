//
//  GameDetailedController.swift
//  NBAapp
//
//  Created by Руслан Сафин on 13.11.2021.
//

import UIKit

class GameDetailedController: UIViewController {
    
    //MARK: - Properties
    var game: Game!
    
    //MARK: - IBOutlets
    @IBOutlet weak var arenaImageView: UIImageView!
    @IBOutlet weak var attackTeamLogo: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var deffTeamLogo: UIImageView!
    @IBOutlet weak var attackTeamLabel: UILabel!
    @IBOutlet weak var deffTeamLabel: UILabel!
    @IBOutlet weak var gameScore: UILabel!
    @IBOutlet weak var arenaLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var winnerLabel: UILabel!
    @IBOutlet weak var topPlayerPhoto: UIImageView!
    @IBOutlet weak var topPlayerLabel: UILabel!
    
    //MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "\(game.attackers) vs. \(game.defenders)"
        
        arenaImageView.image = UIImage(named: game.arenaPhoto)
        arenaLabel.text = game.arena
        dateLabel.text = game.date
        
        attackTeamLogo.image = UIImage(named: game.logoAttack)
        attackTeamLabel.text = game.attackers
        deffTeamLogo.image = UIImage(named: game.logoDeff)
        deffTeamLabel.text = game.defenders
        gameScore.text = game.score
        cityLabel.text = game.city
        winnerLabel.text = game.winner
        
        topPlayerLabel.text = game.topPlayer
        topPlayerPhoto.image = UIImage(named: game.topPlayerPhoto)
        topPlayerPhoto.layer.cornerRadius = topPlayerPhoto.frame.width / 2
    }
}