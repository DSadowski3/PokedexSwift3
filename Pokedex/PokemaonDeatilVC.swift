//
//  PokemaonDeatilVC.swift
//  Pokedex
//
//  Created by Dominik Sadowski on 8/18/16.
//  Copyright © 2016 Dominik Sadowski. All rights reserved.
//

import UIKit

class PokemaonDeatilVC: UIViewController {
    
    var pokemon: Pokemon!
    
    @IBOutlet var mainImg: UIImageView!
    @IBOutlet var nameLbl: UILabel!
    @IBOutlet var descLbl: UILabel!
    @IBOutlet var typeLbl: UILabel!
    @IBOutlet var defenseLbl: UILabel!
    @IBOutlet var heightLbl: UILabel!
    @IBOutlet var pokedexIDLbl: UILabel!
    @IBOutlet var weightLbl: UILabel!
    @IBOutlet var attackLbl: UILabel!
    @IBOutlet var currentEvoImg: UIImageView!
    @IBOutlet var nextEvoImg: UIImageView!
    @IBOutlet var evoLbl: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        nameLbl.text = pokemon.name
        
        pokemon.downloadPokemonDetails {
            
            self.updateUI()
        }
    }
    
    func updateUI() {
        
    }

    @IBAction func backButtonPressed(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    

}
