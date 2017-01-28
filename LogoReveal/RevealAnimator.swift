//
//  RevealAnimator.swift
//  LogoReveal
//
//  Created by Marin Todorov on 8/7/16.
//  Copyright © 2016 Razeware LLC. All rights reserved.
//

import Foundation
import UIKit


class RevealAnimator: NSObject, UIViewControllerAnimatedTransitioning, CAAnimationDelegate {
    
    let animationDuration = 0.1
    var operation: UINavigationControllerOperation = .push
    weak var storedContext: UIViewControllerContextTransitioning?
    
    var rWLogoLayer = RWLogoLayer()
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {return animationDuration}
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        storedContext = transitionContext
        
        
        
        let fromVC = transitionContext.viewController(forKey: .from)
        
        let fromVcView = fromVC?.view
        
        let toVC = transitionContext.viewController(forKey: .to)
        
        let toVcView = toVC?.view
        
        let containerView = transitionContext.containerView
        
        transitionContext.containerView.addSubview(toVcView!)
        
        toVcView?.frame = transitionContext.finalFrame(for: toVC!)
        
        rWLogoLayer.setup(frame: CGRect(x: 0, y: 186 , width: containerView.bounds.width, height: 100))
        
        rWLogoLayer.frame = CGRect(x: 0, y: 186 , width: containerView.bounds.width, height: 100)
        
        rWLogoLayer.animating = true
        
        toVcView?.insertSubview(rWLogoLayer, at: 0)
        
        toVcView?.alpha = 0.8
         fromVcView?.alpha = 1
        let maskLayer: CAShapeLayer = rWLogoLayer.elasticShape
        
        maskLayer.frame = CGRect(x: 0, y: 186, width: containerView.bounds.width, height: 100)
        
        maskLayer.path = rWLogoLayer.bezierPathForControlPoints()
        
        maskLayer.bounds = (rWLogoLayer.elasticShape.path?.boundingBox)!
    
        toVcView?.layer.mask = maskLayer
        var newP : CGPoint!
        func zigzag(){
            UIView.animate(withDuration: animationDuration, animations: { () -> Void in
                
                for v in self.rWLogoLayer.centerViewTop{v.center.y -= containerView.bounds.height}
                for v in self.rWLogoLayer.controlPointTop1{v.center.y -= containerView.bounds.height}
                for v in self.rWLogoLayer.controlPointTop2{v.center.y -= containerView.bounds.height}
                for v in self.rWLogoLayer.centerViewBottom{v.center.y += containerView.bounds.height}
                for v in self.rWLogoLayer.controlPointBottom1{v.center.y += containerView.bounds.height}
                for v in self.rWLogoLayer.controlPointBottom2{v.center.y += containerView.bounds.height}
                
               
                fromVcView?.alpha = 0.5
                toVcView?.alpha = 1
                
            }, completion: {_ in
                
                self.rWLogoLayer.animating = false
                
                self.rWLogoLayer.layer.removeAllAnimations()
                
                if let context = self.storedContext {
                    
                    self.rWLogoLayer.layer.removeAllAnimations()
                    
                    context.completeTransition(!context.transitionWasCancelled)
                    
                    toVcView?.layer.mask = nil
                }
                self.storedContext = nil
                
            })
        }
        
        
        if operation == .push {
            
            
            zigzag()
            
            
        } else {
            
            toVcView?.layer.mask = maskLayer
            
            UIView.animate(withDuration: animationDuration, animations: { () -> Void in
                
                for v in self.rWLogoLayer.centerViewTop{v.center.y -= containerView.bounds.height}
                for v in self.rWLogoLayer.controlPointTop1{v.center.y -= containerView.bounds.height}
                for v in self.rWLogoLayer.controlPointTop2{v.center.y -= containerView.bounds.height}
                for v in self.rWLogoLayer.centerViewBottom{v.center.y += containerView.bounds.height}
                for v in self.rWLogoLayer.controlPointBottom1{v.center.y += containerView.bounds.height}
                for v in self.rWLogoLayer.controlPointBottom2{v.center.y += containerView.bounds.height}
                
                fromVcView?.alpha = 0.5
                toVcView?.alpha = 1

            }, completion: {_ in
                
                self.rWLogoLayer.animating = false
                
                self.rWLogoLayer.layer.removeAllAnimations()
                
                if let context = self.storedContext {
                    
                    self.rWLogoLayer.layer.removeAllAnimations()
                    
                    context.completeTransition(!context.transitionWasCancelled)
                    
                    toVcView?.layer.mask = nil
                }
                self.storedContext = nil
                
            })
            
            
            
        }
        
    }
    
    
    
}
