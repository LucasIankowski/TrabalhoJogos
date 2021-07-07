//
//  MenuScreen.swift
//  TrabalhoJogos
//
//  Created by Lucas Iankowski Corrêa da Silva on 30/05/21.
//

import SpriteKit

import UIKit

class MenuScreen: SKScene{
    
    let background2 = SKSpriteNode(imageNamed: "BGcapa")
    let btnPlay = SKSpriteNode(imageNamed: "play")
    
    var buttomPointsPlay: CGRect?
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

        background2.anchorPoint = .zero
        background2.position = .zero
        background2.size.width = gameScene.size.width
        background2.size.height = gameScene.size.height
        background2.zPosition = 0
        addChild(background2)
        
        print(gameScene.size)
        
        
        btnPlay.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        btnPlay.size = CGSize(width: btnPlay.size.width * 1.6 , height: btnPlay.size.height * 0.8)
        btnPlay.position = CGPoint(x: (gameScene?.size.width)! / 2 + 10, y: (gameScene.size.height / 2) + 5)
        btnPlay.zPosition = 1
        buttomPointsPlay = btnPlay.calculateAccumulatedFrame()
        addChild(btnPlay)
        
    }
    
    
    
    override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        var firstTouch = touches.first?.location(in: self)
        
        if firstTouch!.x > buttomPointsPlay!.minX && firstTouch!.y > buttomPointsPlay!.minY && firstTouch!.x < buttomPointsPlay!.maxX && firstTouch!.y < buttomPointsPlay!.maxY{
            skView?.presentScene(gameScene)
         
           
            
        }
        
        }
}
