//
//  GameViewController.swift
//  Flick Off
//
//  Created by Aidan Curtis on 12/30/15.
//  Copyright (c) 2015 southpawac. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

            }

    override func shouldAutorotate() -> Bool {
        return true
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews();
        if let scene = GameScene(fileNamed:"GameScene") {
            // Configure the view.

            
            let skView = self.view as! SKView
            skView.showsFPS = true
            skView.showsNodeCount = true
        
            /* Sprite Kit applies additional optimizations to improve rendering performance */
            skView.ignoresSiblingOrder = true
            
            /* Set the scale mode to scale to fit the window */
            scene.size=skView.bounds.size;
            scene.scaleMode = .AspectFill
            
            skView.presentScene(scene)
        }

        
    }
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        if UIDevice.currentDevice().userInterfaceIdiom == .Phone {
            return .AllButUpsideDown
        } else {
            return .All
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
