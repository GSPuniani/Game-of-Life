//
//  Creature.swift
//  GameOfLife
//
//  Created by Gobind Puniani on 7/13/18.
//  Copyright © 2018 Gobind Puniani. All rights reserved.
//

import Foundation
import SpriteKit

class  Creature: SKSpriteNode {
    var isAlive: Bool = false {
        didSet {
            isHidden = !isAlive
        }
    }
    
    var neighborCount = 0
    
    init() {
        let texture = SKTexture(imageNamed: "bubble")
        super.init(texture: texture, color: UIColor.clear, size: texture.size())
        zPosition = 1
        anchorPoint = CGPoint(x: 0, y: 0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
