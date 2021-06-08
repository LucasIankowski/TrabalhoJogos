//
//  MenuScreen.swift
//  TrabalhoJogos
//
//  Created by Lucas Iankowski Corrêa da Silva on 30/05/21.
//

import SpriteKit
import AVFoundation

import UIKit

class MenuScreen: SKScene{
    let btnPlay = SKSpriteNode(imageNamed: "play")
    let btnShop = SKSpriteNode(imageNamed: "shop")
    let btnSettings = SKSpriteNode(imageNamed: "settings")
    var buttomPointsPlay: CGRect?
    var buttomPointsShop: CGRect?
    var buttomPointsOther: CGRect?
    var skView : SKView?
    var gameScene : GameScene!
    override func didMove(to view: SKView) {
      
        skView = view as! SKView
        gameScene = GameScene(size: view.bounds.size)
        

        skView?.showsFPS = false
        skView?.showsNodeCount = false
        skView?.showsPhysics = false
        skView?.ignoresSiblingOrder = true
        gameScene.scaleMode = .aspectFill
        gameScene.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        
        print(gameScene.size)
        
        
        btnPlay.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        btnPlay.size = CGSize(width: btnPlay.size.width * 1.6 , height: btnPlay.size.height * 0.8)
        btnPlay.position = CGPoint(x: (gameScene?.size.width)! / 2 + 10, y: (gameScene.size.height / 2) + 5)
        btnPlay.zPosition = 1
        buttomPointsPlay = btnPlay.calculateAccumulatedFrame()
        addChild(btnPlay)
        
        
        btnShop.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        btnShop.size = CGSize(width: btnShop.size.width * 1.6, height: btnShop.size.height * 0.8)
        btnShop.position = CGPoint(x: (gameScene?.size.width)! / 2 + 10, y: (gameScene.size.height / 2) - 50)
        btnShop.zPosition = 1
        buttomPointsShop = btnShop.calculateAccumulatedFrame()
        addChild(btnShop)

        btnSettings.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        btnSettings.size = CGSize(width: btnSettings.size.width , height: btnSettings.size.height * 0.8)
        btnSettings.position = CGPoint(x: (gameScene?.size.width)! / 2 + 10, y: (gameScene.size.height / 2) - 100)
        btnSettings.zPosition = 1
        buttomPointsOther = btnSettings.calculateAccumulatedFrame()
        addChild(btnSettings)
    }

    
    
    
    override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        var firstTouch = touches.first?.location(in: self)
        
        if firstTouch!.x > buttomPointsPlay!.minX && firstTouch!.y > buttomPointsPlay!.minY && firstTouch!.x < buttomPointsPlay!.maxX && firstTouch!.y < buttomPointsPlay!.maxY{
            
            skView?.presentScene(gameScene)
        }
        
        }
    
  
}
