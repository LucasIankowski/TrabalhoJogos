//
//  GameViewController.swift
//  TrabalhoJogos
//
//  Created by Lucas Iankowski Corrêa da Silva on 30/05/21.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    
    var menuScene: MenuScreen?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let skView = view as! SKView
        
        menuScene = MenuScreen(size: view.bounds.size)
        menuScene?.scaleMode = .aspectFit
        skView.presentScene(menuScene)
    }
}
