





import UIKit
import QuartzCore

@IBDesignable class RWLogoLayer : UIView{
    
    let b1 = UIView()
    let b2 = UIView()
    let b3 = UIView()
    let b4 = UIView()
    let b5 = UIView()
    let b6 = UIView()
    let b7 = UIView()
    let b8 = UIView()
    let b9 = UIView()
    let b10 = UIView()
    let b11 = UIView()
    let b12 = UIView()

    
    let t1 = UIView()
    let t2 = UIView()
    let t3 = UIView()
    let t4 = UIView()
    let t5 = UIView()
    let t6 = UIView()
    let t7 = UIView()
    let t8 = UIView()
    let t9 = UIView()
    let t10 = UIView()
    let t11 = UIView()
    let t12 = UIView()

    
    var pb1X = UIView()
    var pb2X = UIView()
    var pb3X = UIView()
    var pb4X = UIView()
    var pb5X = UIView()
    var pb6X = UIView()
    var pb7X = UIView()
    var pb8X = UIView()
    var pb9X = UIView()
    var pb10X = UIView()
    var pb11X = UIView()
    var pb12X = UIView()
    var pb13X = UIView()
    var pb14X = UIView()
    var pb15X = UIView()
    var pb16X = UIView()
    var pb17X = UIView()
    var pb18X = UIView()
    var pb19X = UIView()
    var pb20X = UIView()
    var pb21X = UIView()
    var pb22X = UIView()
    
    var pt1X = UIView()
    var pt2X = UIView()
    var pt3X = UIView()
    var pt4X = UIView()
    var pt5X = UIView()
    var pt6X = UIView()
    var pt7X = UIView()
    var pt8X = UIView()
    var pt9X = UIView()
    var pt10X = UIView()
    var pt11X = UIView()
    var pt12X = UIView()
    var pt13X = UIView()
    var pt14X = UIView()
    var pt15X = UIView()
    var pt16X = UIView()
    var pt17X = UIView()
    var pt18X = UIView()
    var pt19X = UIView()
    var pt20X = UIView()
    var pt21X = UIView()
    var pt22X = UIView()
    
    
    var width : CGFloat!
    var height : CGFloat!

    

    
    let elasticShape = CAShapeLayer()
    var displayLink: CADisplayLink!
    
    var animating = false {
        didSet {self.isUserInteractionEnabled = !animating
            displayLink.isPaused = !animating
            
        } }
    
    
    var centerViewBottom : [UIView] = []
    var centerViewTop : [UIView] = []
    var controlPointTop1 : [UIView] = []
    var controlPointTop2 : [UIView] = []
    var controlPointBottom1 : [UIView] = []
    var controlPointBottom2 : [UIView] = []
    
    func setup(frame: CGRect){
        
        
        b1.center = CGPoint(x: frame.minX + 0.00000 * frame.width, y: frame.minY + 0.00000 * frame.height)
        b2.center = CGPoint(x: frame.minX + 0.01777 * frame.width, y: frame.minY + 0.98258 * frame.height)
        b3.center = CGPoint(x: frame.minX + 0.02567 * frame.width, y: frame.minY + 0.66777 * frame.height)
        b4.center = CGPoint(x: frame.minX + 0.04067 * frame.width, y: frame.minY + 0.79656 * frame.height)
        b5.center = CGPoint(x: frame.minX + 0.04067 * frame.width, y: frame.minY + 0.62484 * frame.height)
        b6.center = CGPoint(x: frame.minX + 0.05456 * frame.width, y: frame.minY + 0.62484 * frame.height)
        b7.center = CGPoint(x: frame.minX + 0.08884 * frame.width, y: frame.minY + 0.58192 * frame.height)
        b8.center = CGPoint(x: frame.minX + 0.12401 * frame.width, y: frame.minY + 0.62484 * frame.height)
        b9.center = CGPoint(x: frame.minX + 0.14385 * frame.width, y: frame.minY + 0.73932 * frame.height)
        b10.center = CGPoint(x: frame.minX + 0.17768 * frame.width, y: frame.minY + 0.66777 * frame.height)
        b11.center = CGPoint(x: frame.minX + 0.19348 * frame.width, y: frame.minY + 0.66777 * frame.height)
        b12.center = CGPoint(x: frame.minX + 0.19841 * frame.width, y: frame.minY + 0.00000 * frame.height)
        
        t12.center = CGPoint(x: frame.minX + 0.00000 * frame.width, y: frame.minY + 0.00000 * frame.height)
        t11.center = CGPoint(x: frame.minX + 0.01777 * frame.width, y: frame.minY + 0.98258 * frame.height)
        t10.center = CGPoint(x: frame.minX + 0.02567 * frame.width, y: frame.minY + 0.66777 * frame.height)
        t9.center = CGPoint(x: frame.minX + 0.04067 * frame.width, y: frame.minY + 0.79656 * frame.height)
        t8.center = CGPoint(x: frame.minX + 0.04067 * frame.width, y: frame.minY + 0.62484 * frame.height)
        t7.center = CGPoint(x: frame.minX + 0.05456 * frame.width, y: frame.minY + 0.62484 * frame.height)
        t6.center = CGPoint(x: frame.minX + 0.08884 * frame.width, y: frame.minY + 0.58192 * frame.height)
        t5.center = CGPoint(x: frame.minX + 0.12401 * frame.width, y: frame.minY + 0.62484 * frame.height)
        t4.center = CGPoint(x: frame.minX + 0.14385 * frame.width, y: frame.minY + 0.73932 * frame.height)
        t3.center = CGPoint(x: frame.minX + 0.17768 * frame.width, y: frame.minY + 0.66777 * frame.height)
        t2.center = CGPoint(x: frame.minX + 0.19348 * frame.width, y: frame.minY + 0.66777 * frame.height)
        t1.center = CGPoint(x: frame.minX + 0.19841 * frame.width, y: frame.minY + 0.00000 * frame.height)
        
        
        
        pb1X.center = CGPoint(x: frame.minX + 0.00000 * frame.width, y: frame.minY + 0.00000 * frame.height)
        pb2X.center = CGPoint(x: frame.minX + 0.01185 * frame.width, y: frame.minY + 1.15429 * frame.height)
        pb3X.center = CGPoint(x: frame.minX + 0.02369 * frame.width, y: frame.minY + 0.81087 * frame.height)
        pb4X.center = CGPoint(x: frame.minX + 0.02480 * frame.width, y: frame.minY + 0.76794 * frame.height)
        pb5X.center = CGPoint(x: frame.minX + 0.02653 * frame.width, y: frame.minY + 0.56761 * frame.height)
        pb6X.center = CGPoint(x: frame.minX + 0.03870 * frame.width, y: frame.minY + 0.79656 * frame.height)
        pb7X.center = CGPoint(x: frame.minX + 0.04265 * frame.width, y: frame.minY + 0.79656 * frame.height)
        pb8X.center = CGPoint(x: frame.minX + 0.03475 * frame.width, y: frame.minY + 0.62484 * frame.height)
        pb9X.center = CGPoint(x: frame.minX + 0.04660 * frame.width, y: frame.minY + 0.62484 * frame.height)
        pb10X.center = CGPoint(x: frame.minX + 0.05456 * frame.width, y: frame.minY + 0.62484 * frame.height)
        pb11X.center = CGPoint(x: frame.minX + 0.05456 * frame.width, y: frame.minY + 0.62484 * frame.height)
        pb12X.center = CGPoint(x: frame.minX + 0.06712 * frame.width, y: frame.minY + 0.25757 * frame.height)
        pb13X.center = CGPoint(x: frame.minX + 0.11056 * frame.width, y: frame.minY + 0.90626 * frame.height)
        pb14X.center = CGPoint(x: frame.minX + 0.11409 * frame.width, y: frame.minY + 0.80610 * frame.height)
        pb15X.center = CGPoint(x: frame.minX + 0.13393 * frame.width, y: frame.minY + 0.44359 * frame.height)
        pb16X.center = CGPoint(x: frame.minX + 0.13003 * frame.width, y: frame.minY + 0.73932 * frame.height)
        pb17X.center = CGPoint(x: frame.minX + 0.15767 * frame.width, y: frame.minY + 0.73932 * frame.height)
        pb18X.center = CGPoint(x: frame.minX + 0.17176 * frame.width, y: frame.minY + 0.58192 * frame.height)
        pb19X.center = CGPoint(x: frame.minX + 0.18361 * frame.width, y: frame.minY + 0.75363 * frame.height)
        pb20X.center = CGPoint(x: frame.minX + 0.19348 * frame.width, y: frame.minY + 0.86810 * frame.height)
        pb21X.center = CGPoint(x: frame.minX + 0.19348 * frame.width, y: frame.minY + 0.46744 * frame.height)
        pb22X.center = CGPoint(x: frame.minX + 0.19841 * frame.width, y: frame.minY + 0.00000 * frame.height)
        
        pt1X.center = CGPoint(x: frame.minX + 0.19841 * frame.width, y: frame.minY + 0.00000 * frame.height)
        pt2X.center = CGPoint(x: frame.minX + 0.19348 * frame.width, y: frame.minY + 0.46744 * frame.height)
        pt3X.center = CGPoint(x: frame.minX + 0.19348 * frame.width, y: frame.minY + 0.86810 * frame.height)
        pt4X.center = CGPoint(x: frame.minX + 0.18361 * frame.width, y: frame.minY + 0.75363 * frame.height)
        pt5X.center = CGPoint(x: frame.minX + 0.17176 * frame.width, y: frame.minY + 0.58192 * frame.height)
        pt6X.center = CGPoint(x: frame.minX + 0.15767 * frame.width, y: frame.minY + 0.73932 * frame.height)
        pt7X.center = CGPoint(x: frame.minX + 0.13003 * frame.width, y: frame.minY + 0.73932 * frame.height)
        pt8X.center = CGPoint(x: frame.minX + 0.13393 * frame.width, y: frame.minY + 0.44359 * frame.height)
        pt9X.center = CGPoint(x: frame.minX + 0.11409 * frame.width, y: frame.minY + 0.80610 * frame.height)
        pt10X.center = CGPoint(x: frame.minX + 0.11056 * frame.width, y: frame.minY + 0.90626 * frame.height)
        pt11X.center = CGPoint(x: frame.minX + 0.06712 * frame.width, y: frame.minY + 0.25757 * frame.height)
        pt12X.center = CGPoint(x: frame.minX + 0.05456 * frame.width, y: frame.minY + 0.62484 * frame.height)
        pt13X.center = CGPoint(x: frame.minX + 0.05456 * frame.width, y: frame.minY + 0.62484 * frame.height)
        pt14X.center = CGPoint(x: frame.minX + 0.04660 * frame.width, y: frame.minY + 0.62484 * frame.height)
        pt15X.center = CGPoint(x: frame.minX + 0.03475 * frame.width, y: frame.minY + 0.62484 * frame.height)
        pt16X.center = CGPoint(x: frame.minX + 0.04265 * frame.width, y: frame.minY + 0.79656 * frame.height)
        pt17X.center = CGPoint(x: frame.minX + 0.03870 * frame.width, y: frame.minY + 0.79656 * frame.height)
        pt18X.center = CGPoint(x: frame.minX + 0.02653 * frame.width, y: frame.minY + 0.56761 * frame.height)
        pt19X.center = CGPoint(x: frame.minX + 0.02480 * frame.width, y: frame.minY + 0.76794 * frame.height)
        pt20X.center = CGPoint(x: frame.minX + 0.02369 * frame.width, y: frame.minY + 0.81087 * frame.height)
        pt21X.center = CGPoint(x: frame.minX + 0.01185 * frame.width, y: frame.minY + 1.15429 * frame.height)
        pt22X.center = CGPoint(x: frame.minX + 0.00000 * frame.width, y: frame.minY + 0.00000 * frame.height)
        
        centerViewBottom=[b2,b3,b4, b5,b6,b7, b8,b9, b10,b11, b12]
        controlPointBottom1 = [pb1X, pb3X, pb5X, pb7X, pb9X, pb11X,  pb13X,  pb15X,  pb17X, pb19X, pb21X]
        controlPointBottom2 = [pb2X, pb4X,  pb6X,  pb8X, pb10X, pb12X, pb14X, pb16X, pb18X,  pb20X,  pb22X]
        
        centerViewTop=[t2,t3, t4,t5,t6, t7,t8, t9,t10, t11, t12]
        controlPointTop1 = [pt1X, pt3X, pt5X, pt7X, pt9X, pt11X,  pt13X,  pt15X,  pt17X, pt19X, pt21X]
        controlPointTop2 = [pt2X, pt4X,  pt6X,  pt8X, pt10X, pt12X, pt14X, pt16X, pt18X,  pt20X,  pt22X]
        
        

        
        
        
        elasticShape.path = bezierPathForControlPoints()
       
        
        elasticShape.strokeColor = UIColor.white.cgColor
        
        elasticShape.lineWidth = 2
        
        layer.insertSublayer(elasticShape, at: 0)
        
        layer.bounds = (bezierPathForControlPoints().boundingBox)
        
        elasticShape.actions = ["position" : NSNull(), "bounds" : NSNull(), "path" : NSNull()]
        
        self.addSubview(b1)
        self.addSubview(b2)
        self.addSubview(b3)
        self.addSubview(b4)
        self.addSubview(b5)
        self.addSubview(b6)
        self.addSubview(b7)
        self.addSubview(b8)
        self.addSubview(b9)
        self.addSubview(b10)
        self.addSubview(b11)
        self.addSubview(b12)
        
        self.addSubview(t1)
        self.addSubview(t2)
        self.addSubview(t3)
        self.addSubview(t4)
        self.addSubview(t5)
        self.addSubview(t6)
        self.addSubview(t7)
        self.addSubview(t8)
        self.addSubview(t9)
        self.addSubview(t10)
        self.addSubview(t11)
        self.addSubview(t12)
        
        self.addSubview(pb1X)
        self.addSubview(pb2X)
        self.addSubview(pb3X)
        self.addSubview(pb4X)
        self.addSubview(pb5X)
        self.addSubview(pb6X)
        self.addSubview(pb7X)
        self.addSubview(pb8X)
        self.addSubview(pb9X)
        self.addSubview(pb10X)
        self.addSubview(pb11X)
        self.addSubview(pb12X)
        self.addSubview(pb13X)
        self.addSubview(pb14X)
        self.addSubview(pb15X)
        self.addSubview(pb16X)
        self.addSubview(pb17X)
        self.addSubview(pb18X)
        self.addSubview(pb19X)
        self.addSubview(pb20X)
        self.addSubview(pb21X)
        self.addSubview(pb22X)
        
        self.addSubview(pt1X)
        self.addSubview(pt2X)
        self.addSubview(pt3X)
        self.addSubview(pt4X)
        self.addSubview(pt5X)
        self.addSubview(pt6X)
        self.addSubview(pt7X)
        self.addSubview(pt8X)
        self.addSubview(pt9X)
        self.addSubview(pt10X)
        self.addSubview(pt11X)
        self.addSubview(pt12X)
        self.addSubview(pt13X)
        self.addSubview(pt14X)
        self.addSubview(pt15X)
        self.addSubview(pt16X)
        self.addSubview(pt17X)
        self.addSubview(pt18X)
        self.addSubview(pt19X)
        self.addSubview(pt20X)
        self.addSubview(pt21X)
        self.addSubview(pt22X)
        
        displayLink = CADisplayLink(target: self, selector: #selector(RWLogoLayer.updateShapeLayer))
        
        displayLink.add(to: RunLoop.main, forMode: RunLoopMode.defaultRunLoopMode)
        
        displayLink.isPaused = true
    }
    
    func updateShapeLayer() {
        
        elasticShape.path = bezierPathForControlPoints()
        
    }
    
    func centerPoint (view : UIView, mult : CGFloat) -> CGPoint{
        
        let t = CGPoint(x: view.dg_center(animating).x + mult, y: view.dg_center(animating).y)
        
        return t
    }
    
    func controlPoint1 (view : UIView, mult : CGFloat) -> CGPoint{
        
        let t = CGPoint(x: view.dg_center(animating).x + mult, y: view.dg_center(animating).y)
        
        return t
    }
    
    func controlPoint2 (view : UIView, mult : CGFloat) -> CGPoint{
        
        let t = CGPoint(x: view.dg_center(animating).x + mult, y: view.dg_center(animating).y)
        
        return t
    }
    
    
    func bezierPathForControlPoints()->CGPath {
        
        
        
        
        let digb1 = CGPoint(x: b1.dg_center(animating).x, y: b1.dg_center(animating).y)
    
        
        let digt1 = CGPoint(x: t12.dg_center(animating).x, y: t12.dg_center(animating).y)
        
        
        let bezierPath = UIBezierPath()
        let delta = self.bounds.width/5
        
        bezierPath.move(to: digb1)

        for s in 0...4{
        for (i,g) in centerViewBottom.enumerated() {
       
       //   bezierPath.addLine(to: centerPoint(view: g, mult: CGFloat(s) * delta))
            
              bezierPath.addCurve(to: centerPoint(view: g, mult: CGFloat(s) * delta),controlPoint1: controlPoint1(view: controlPointBottom1[i], mult: CGFloat(s) * delta), controlPoint2: controlPoint2(view: controlPointBottom2[i], mult: CGFloat(s) * delta))
  
            }
        }

        
        for s in (0...4).reversed(){
        for (i,g) in centerViewTop.enumerated() {
            
           //   bezierPath.addLine(to: centerPoint(view: g, mult: CGFloat(s) * delta))
            
                      bezierPath.addCurve(to: centerPoint(view: g, mult: CGFloat(s) * delta),controlPoint1: controlPoint1(view: controlPointTop1[i], mult: CGFloat(s) * delta), controlPoint2: controlPoint2(view: controlPointTop2[i], mult: CGFloat(s) * delta))
        }
        
        }
    
       
                return bezierPath.cgPath
        
    }
    
    func updateLoop() {
        elasticShape.path = bezierPathForControlPoints()
    }
    
    fileprivate func startUpdateLoop() {
        displayLink.isPaused = false
    }
    
    fileprivate func stopUpdateLoop() {
        displayLink.isPaused = true
    }
    
    @IBInspectable var overshootAmount : CGFloat = 10
    
    
    
    
    override var backgroundColor: UIColor? {
        willSet {
            if let newValue = newValue {
                elasticShape.fillColor = newValue.cgColor
                super.backgroundColor = UIColor.blue
            }
        }
    }
    
    
}
extension UIView {
    func dg_center(_ usePresentationLayerIfPossible: Bool) -> CGPoint {
        if usePresentationLayerIfPossible, let presentationLayer = layer.presentation()
        {
            
            return presentationLayer.position
        }
        return center
    }
}
/*
 import UIKit
 import QuartzCore
 
 @IBDesignable class RWLogoLayer : UIView{
 
 let b1 = UIView()
 let b2 = UIView()
 let b3 = UIView()
 let b4 = UIView()
 let b5 = UIView()
 let b6 = UIView()
 let b7 = UIView()
 let b8 = UIView()
 let b9 = UIView()
 let b10 = UIView()
 let b11 = UIView()
 let b12 = UIView()
 let b13 = UIView()
 let b14 = UIView()
 let b15 = UIView()
 let b16 = UIView()
 let b17 = UIView()
 let b18 = UIView()
 let b19 = UIView()
 let b20 = UIView()
 let b21 = UIView()
 let b22 = UIView()
 let b23 = UIView()
 let b24 = UIView()
 let b25 = UIView()
 let b26 = UIView()
 let b27 = UIView()
 let b28 = UIView()
 let b29 = UIView()
 let b30 = UIView()
 let b31 = UIView()
 let b32 = UIView()
 let b33 = UIView()
 let b34 = UIView()
 let b35 = UIView()
 
 
 let t1 = UIView()
 let t2 = UIView()
 let t3 = UIView()
 let t4 = UIView()
 let t5 = UIView()
 let t6 = UIView()
 let t7 = UIView()
 let t8 = UIView()
 let t9 = UIView()
 let t10 = UIView()
 let t11 = UIView()
 let t12 = UIView()
 let t13 = UIView()
 let t14 = UIView()
 let t15 = UIView()
 let t16 = UIView()
 let t17 = UIView()
 let t18 = UIView()
 let t19 = UIView()
 let t20 = UIView()
 let t21 = UIView()
 let t22 = UIView()
 let t23 = UIView()
 let t24 = UIView()
 let t25 = UIView()
 let t26 = UIView()
 let t27 = UIView()
 let t28 = UIView()
 let t29 = UIView()
 let t30 = UIView()
 let t31 = UIView()
 let t32 = UIView()
 let t33 = UIView()
 let t34 = UIView()
 let t35 = UIView()
 
 
 var width : CGFloat!
 var height : CGFloat!
 
 var vies : [UIView] = []
 var viesB : [UIView] = []
 var viesT : [UIView] = []
 
 let elasticShape = CAShapeLayer()
 var displayLink: CADisplayLink!
 
 var animating = false {
 didSet {self.isUserInteractionEnabled = !animating
 displayLink.isPaused = !animating
 
 } }
 
 func setup(frame: CGRect){
 
 vies=[b1, b2,b3,b4, b5,b6,b7, b8,b9, b10,b11, b12,b13,b14,b15,b16,b17,b18,b19,b20,b21, b22, b23, b24, b25, b26, b27, b28, b29, b30,b31, b32, b33, b34, b35,t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15, t16, t17, t18, t19, t20, t21, t22, t23, t24, t25, t26, t27, t28, t29, t30, t31,t32, t33, t34, t35]
 
 viesB=[b2,b3,b4, b5,b6,b7, b8,b9, b10,b11, b12,b13,b14,b15,b16,b17,b18,b19,b20,b21, b22, b23, b24, b25, b26, b27, b28, b29, b30,b31, b32, b33, b34, b35]
 
 
 viesT=[t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15, t16, t17, t18, t19, t20, t21, t22, t23, t24, t25, t26, t27, t28, t29, t30, t31,t32, t33, t34, t35]
 
 
 b1.center = CGPoint(x: frame.minX + 0.00000 * frame.width, y: frame.minY + 0.46816 * frame.height)
 b2.center = CGPoint(x: frame.minX + 0.10695 * frame.width, y: frame.minY + 0.46816 * frame.height)
 b3.center = CGPoint(x: frame.minX + 0.11586 * frame.width, y: frame.minY + 0.44943 * frame.height)
 b4.center = CGPoint(x: frame.minX + 0.12121 * frame.width, y: frame.minY + 0.47939 * frame.height)
 b5.center = CGPoint(x: frame.minX + 0.13012 * frame.width, y: frame.minY + 0.43445 * frame.height)
 b6.center = CGPoint(x: frame.minX + 0.13547 * frame.width, y: frame.minY + 0.49812 * frame.height)
 b7.center = CGPoint(x: frame.minX + 0.14973 * frame.width, y: frame.minY + 0.31086 * frame.height)
 b8.center = CGPoint(x: frame.minX + 0.16221 * frame.width, y: frame.minY + 0.61048 * frame.height)
 b9.center = CGPoint(x: frame.minX + 0.17291 * frame.width, y: frame.minY + 0.43445 * frame.height)
 b10.center = CGPoint(x: frame.minX + 0.18004 * frame.width, y: frame.minY + 0.50187 * frame.height)
 b11.center = CGPoint(x: frame.minX + 0.18717 * frame.width, y: frame.minY + 0.44569 * frame.height)
 b12.center = CGPoint(x: frame.minX + 0.19251 * frame.width, y: frame.minY + 0.46816 * frame.height)
 b13.center = CGPoint(x: frame.minX + 0.29768 * frame.width, y: frame.minY + 0.46816 * frame.height)
 b14.center = CGPoint(x: frame.minX + 0.31551 * frame.width, y: frame.minY + 0.41198 * frame.height)
 b15.center = CGPoint(x: frame.minX + 0.33333 * frame.width, y: frame.minY + 0.51310 * frame.height)
 b16.center = CGPoint(x: frame.minX + 0.36185 * frame.width, y: frame.minY + 0.35205 * frame.height)
 b17.center = CGPoint(x: frame.minX + 0.37968 * frame.width, y: frame.minY + 0.59175 * frame.height)
 b18.center = CGPoint(x: frame.minX + 0.42068 * frame.width, y: frame.minY + 0.00000 * frame.height)
 b19.center = CGPoint(x: frame.minX + 0.45633 * frame.width, y: frame.minY + 0.99624 * frame.height)
 b20.center = CGPoint(x: frame.minX + 0.49198 * frame.width, y: frame.minY + 0.35580 * frame.height)
 b21.center = CGPoint(x: frame.minX + 0.50980 * frame.width, y: frame.minY + 0.54306 * frame.height)
 b22.center = CGPoint(x: frame.minX + 0.52763 * frame.width, y: frame.minY + 0.41198 * frame.height)
 b23.center = CGPoint(x: frame.minX + 0.54724 * frame.width, y: frame.minY + 0.46816 * frame.height)
 b24.center = CGPoint(x: frame.minX + 0.74688 * frame.width, y: frame.minY + 0.46816 * frame.height)
 b25.center = CGPoint(x: frame.minX + 0.75401 * frame.width, y: frame.minY + 0.44943 * frame.height)
 b26.center = CGPoint(x: frame.minX + 0.75936 * frame.width, y: frame.minY + 0.46816 * frame.height)
 b27.center = CGPoint(x: frame.minX + 0.77005 * frame.width, y: frame.minY + 0.42696 * frame.height)
 b28.center = CGPoint(x: frame.minX + 0.77540 * frame.width, y: frame.minY + 0.47939 * frame.height)
 b29.center = CGPoint(x: frame.minX + 0.78788 * frame.width, y: frame.minY + 0.32584 * frame.height)
 b30.center = CGPoint(x: frame.minX + 0.80036 * frame.width, y: frame.minY + 0.58801 * frame.height)
 b31.center = CGPoint(x: frame.minX + 0.81283 * frame.width, y: frame.minY + 0.43445 * frame.height)
 b32.center = CGPoint(x: frame.minX + 0.81818 * frame.width, y: frame.minY + 0.46816 * frame.height)
 b33.center = CGPoint(x: frame.minX + 0.82353 * frame.width, y: frame.minY + 0.44943 * frame.height)
 b34.center = CGPoint(x: frame.minX + 0.83244 * frame.width, y: frame.minY + 0.46816 * frame.height)
 b35.center = CGPoint(x: frame.minX + 1.00000 * frame.width, y: frame.minY + 0.46816 * frame.height)
 
 t1.center = CGPoint(x: frame.minX + 0.00000 * frame.width, y: frame.minY + 0.46816 * frame.height)
 t2.center = CGPoint(x: frame.minX + 0.10695 * frame.width, y: frame.minY + 0.46816 * frame.height)
 t3.center = CGPoint(x: frame.minX + 0.11586 * frame.width, y: frame.minY + 0.44943 * frame.height)
 t4.center = CGPoint(x: frame.minX + 0.12121 * frame.width, y: frame.minY + 0.47939 * frame.height)
 t5.center = CGPoint(x: frame.minX + 0.13012 * frame.width, y: frame.minY + 0.43445 * frame.height)
 t6.center = CGPoint(x: frame.minX + 0.13547 * frame.width, y: frame.minY + 0.49812 * frame.height)
 t7.center = CGPoint(x: frame.minX + 0.14973 * frame.width, y: frame.minY + 0.31086 * frame.height)
 t8.center = CGPoint(x: frame.minX + 0.16221 * frame.width, y: frame.minY + 0.61048 * frame.height)
 t9.center = CGPoint(x: frame.minX + 0.17291 * frame.width, y: frame.minY + 0.43445 * frame.height)
 t10.center = CGPoint(x: frame.minX + 0.18004 * frame.width, y: frame.minY + 0.50187 * frame.height)
 t11.center = CGPoint(x: frame.minX + 0.18717 * frame.width, y: frame.minY + 0.44569 * frame.height)
 t12.center = CGPoint(x: frame.minX + 0.19251 * frame.width, y: frame.minY + 0.46816 * frame.height)
 t13.center = CGPoint(x: frame.minX + 0.29768 * frame.width, y: frame.minY + 0.46816 * frame.height)
 t14.center = CGPoint(x: frame.minX + 0.31551 * frame.width, y: frame.minY + 0.41198 * frame.height)
 t15.center = CGPoint(x: frame.minX + 0.33333 * frame.width, y: frame.minY + 0.51310 * frame.height)
 t16.center = CGPoint(x: frame.minX + 0.36185 * frame.width, y: frame.minY + 0.35205 * frame.height)
 t17.center = CGPoint(x: frame.minX + 0.37968 * frame.width, y: frame.minY + 0.59175 * frame.height)
 t18.center = CGPoint(x: frame.minX + 0.42068 * frame.width, y: frame.minY + 0.00000 * frame.height)
 t19.center = CGPoint(x: frame.minX + 0.45633 * frame.width, y: frame.minY + 0.99624 * frame.height)
 t20.center = CGPoint(x: frame.minX + 0.49198 * frame.width, y: frame.minY + 0.35580 * frame.height)
 t21.center = CGPoint(x: frame.minX + 0.50980 * frame.width, y: frame.minY + 0.54306 * frame.height)
 t22.center = CGPoint(x: frame.minX + 0.52763 * frame.width, y: frame.minY + 0.41198 * frame.height)
 t23.center = CGPoint(x: frame.minX + 0.54724 * frame.width, y: frame.minY + 0.46816 * frame.height)
 t24.center = CGPoint(x: frame.minX + 0.74688 * frame.width, y: frame.minY + 0.46816 * frame.height)
 t25.center = CGPoint(x: frame.minX + 0.75401 * frame.width, y: frame.minY + 0.44943 * frame.height)
 t26.center = CGPoint(x: frame.minX + 0.75936 * frame.width, y: frame.minY + 0.46816 * frame.height)
 t27.center = CGPoint(x: frame.minX + 0.77005 * frame.width, y: frame.minY + 0.42696 * frame.height)
 t28.center = CGPoint(x: frame.minX + 0.77540 * frame.width, y: frame.minY + 0.47939 * frame.height)
 t29.center = CGPoint(x: frame.minX + 0.78788 * frame.width, y: frame.minY + 0.32584 * frame.height)
 t30.center = CGPoint(x: frame.minX + 0.80036 * frame.width, y: frame.minY + 0.58801 * frame.height)
 t31.center = CGPoint(x: frame.minX + 0.81283 * frame.width, y: frame.minY + 0.43445 * frame.height)
 t32.center = CGPoint(x: frame.minX + 0.81818 * frame.width, y: frame.minY + 0.46816 * frame.height)
 t33.center = CGPoint(x: frame.minX + 0.82353 * frame.width, y: frame.minY + 0.44943 * frame.height)
 t34.center = CGPoint(x: frame.minX + 0.83244 * frame.width, y: frame.minY + 0.46816 * frame.height)
 t35.center = CGPoint(x: frame.minX + 1.00000 * frame.width, y: frame.minY + 0.46816 * frame.height)
 
 
 
 for v in vies {
 
 
 v.bounds = CGRect(x: 0, y: 0, width: 6, height: 6)
 v.backgroundColor = .black
 
 }
 
 
 elasticShape.path = bezierPathForControlPoints()
 
 elasticShape.fillColor = UIColor.white.cgColor
 
 elasticShape.strokeColor = UIColor.white.cgColor
 
 elasticShape.lineWidth = 2
 
 layer.insertSublayer(elasticShape, at: 0)
 layer.bounds = (bezierPathForControlPoints().boundingBox)
 elasticShape.actions = ["position" : NSNull(), "bounds" : NSNull(), "path" : NSNull()]
 
 self.addSubview(b1)
 self.addSubview(b2)
 self.addSubview(b3)
 self.addSubview(b4)
 self.addSubview(b5)
 self.addSubview(b6)
 self.addSubview(b7)
 self.addSubview(b8)
 self.addSubview(b9)
 self.addSubview(b10)
 self.addSubview(b11)
 self.addSubview(b12)
 self.addSubview(b13)
 self.addSubview(b14)
 self.addSubview(b15)
 self.addSubview(b16)
 self.addSubview(b17)
 self.addSubview(b18)
 self.addSubview(b19)
 self.addSubview(b20)
 self.addSubview(b21)
 self.addSubview(b22)
 self.addSubview(b23)
 self.addSubview(b24)
 self.addSubview(b25)
 self.addSubview(b26)
 self.addSubview(b27)
 self.addSubview(b28)
 self.addSubview(b29)
 self.addSubview(b30)
 self.addSubview(b31)
 self.addSubview(b32)
 self.addSubview(b33)
 self.addSubview(b34)
 self.addSubview(b35)
 
 
 self.addSubview(t1)
 self.addSubview(t2)
 self.addSubview(t3)
 self.addSubview(t4)
 self.addSubview(t5)
 self.addSubview(t6)
 self.addSubview(t7)
 self.addSubview(t8)
 self.addSubview(t9)
 self.addSubview(t10)
 self.addSubview(t11)
 self.addSubview(t12)
 self.addSubview(t13)
 self.addSubview(t14)
 self.addSubview(t15)
 self.addSubview(t16)
 self.addSubview(t17)
 self.addSubview(t18)
 self.addSubview(t19)
 self.addSubview(t20)
 self.addSubview(t21)
 self.addSubview(t22)
 self.addSubview(t23)
 self.addSubview(t24)
 self.addSubview(t25)
 self.addSubview(t26)
 self.addSubview(t27)
 self.addSubview(t28)
 self.addSubview(t29)
 self.addSubview(t30)
 self.addSubview(t31)
 self.addSubview(t32)
 self.addSubview(t33)
 self.addSubview(t34)
 self.addSubview(t35)
 
 
 displayLink = CADisplayLink(target: self, selector: #selector(RWLogoLayer.updateShapeLayer))
 
 displayLink.add(to: RunLoop.main, forMode: RunLoopMode.defaultRunLoopMode)
 
 displayLink.isPaused = true
 }
 override func didMoveToSuperview() {
 super.didMoveToSuperview()
 
 print("kkk")
 }
 
 func updateShapeLayer() {
 elasticShape.path = bezierPathForControlPoints()
 
 }
 
 
 func curve (view : UIView) -> CGPoint{
 let t = CGPoint(x: view.dg_center(animating).x, y: view.dg_center(animating).y)
 
 return t
 }
 
 
 func bezierPathForControlPoints()->CGPath {
 
 let digb1 = CGPoint(x: b1.dg_center(animating).x, y: b1.dg_center(animating).y)
 let digb2 = CGPoint(x: b2.dg_center(animating).x, y: b2.dg_center(animating).y)
 let digb3 = CGPoint(x: b3.dg_center(animating).x, y: b3.dg_center(animating).y)
 let digb4 = CGPoint(x: b4.dg_center(animating).x, y: b4.dg_center(animating).y)
 let digb5 = CGPoint(x: b5.dg_center(animating).x, y: b5.dg_center(animating).y)
 let digb6 = CGPoint(x: b6.dg_center(animating).x, y: b6.dg_center(animating).y)
 let digb7 = CGPoint(x: b7.dg_center(animating).x, y: b7.dg_center(animating).y)
 let digb8 = CGPoint(x: b8.dg_center(animating).x, y: b8.dg_center(animating).y)
 let digb9 = CGPoint(x: b9.dg_center(animating).x, y: b9.dg_center(animating).y)
 let digb10 = CGPoint(x: b10.dg_center(animating).x, y: b10.dg_center(animating).y)
 let digb11 = CGPoint(x: b11.dg_center(animating).x, y: b11.dg_center(animating).y)
 let digb12 = CGPoint(x: b12.dg_center(animating).x, y: b12.dg_center(animating).y)
 let digb13 = CGPoint(x: b13.dg_center(animating).x, y: b13.dg_center(animating).y)
 let digb14 = CGPoint(x: b14.dg_center(animating).x, y: b14.dg_center(animating).y)
 let digb15 = CGPoint(x: b15.dg_center(animating).x, y: b15.dg_center(animating).y)
 let digb16 = CGPoint(x: b16.dg_center(animating).x, y: b16.dg_center(animating).y)
 let digb17 = CGPoint(x: b17.dg_center(animating).x, y: b17.dg_center(animating).y)
 let digb18 = CGPoint(x: b18.dg_center(animating).x, y: b18.dg_center(animating).y)
 let digb19 = CGPoint(x: b19.dg_center(animating).x, y: b19.dg_center(animating).y)
 let digb20 = CGPoint(x: b20.dg_center(animating).x, y: b20.dg_center(animating).y)
 let digb21 = CGPoint(x: b21.dg_center(animating).x, y: b21.dg_center(animating).y)
 let digb22 = CGPoint(x: b22.dg_center(animating).x, y: b22.dg_center(animating).y)
 let digb23 = CGPoint(x: b23.dg_center(animating).x, y: b23.dg_center(animating).y)
 let digb24 = CGPoint(x: b24.dg_center(animating).x, y: b24.dg_center(animating).y)
 let digb25 = CGPoint(x: b25.dg_center(animating).x, y: b25.dg_center(animating).y)
 let digb26 = CGPoint(x: b26.dg_center(animating).x, y: b26.dg_center(animating).y)
 let digb27 = CGPoint(x: b27.dg_center(animating).x, y: b27.dg_center(animating).y)
 let digb28 = CGPoint(x: b28.dg_center(animating).x, y: b28.dg_center(animating).y)
 let digb29 = CGPoint(x: b29.dg_center(animating).x, y: b29.dg_center(animating).y)
 let digb30 = CGPoint(x: b30.dg_center(animating).x, y: b30.dg_center(animating).y)
 let digb31 = CGPoint(x: b31.dg_center(animating).x, y: b31.dg_center(animating).y)
 let digb32 = CGPoint(x: b32.dg_center(animating).x, y: b32.dg_center(animating).y)
 let digb33 = CGPoint(x: b33.dg_center(animating).x, y: b33.dg_center(animating).y)
 let digb34 = CGPoint(x: b34.dg_center(animating).x, y: b34.dg_center(animating).y)
 let digb35 = CGPoint(x: b35.dg_center(animating).x, y: b35.dg_center(animating).y)
 
 let digt1 = CGPoint(x: t1.dg_center(animating).x, y: t1.dg_center(animating).y)
 let digt2 = CGPoint(x: t2.dg_center(animating).x, y: t2.dg_center(animating).y)
 let digt3 = CGPoint(x: t3.dg_center(animating).x, y: t3.dg_center(animating).y)
 let digt4 = CGPoint(x: t4.dg_center(animating).x, y: t4.dg_center(animating).y)
 let digt5 = CGPoint(x: t5.dg_center(animating).x, y: t5.dg_center(animating).y)
 let digt6 = CGPoint(x: t6.dg_center(animating).x, y: t6.dg_center(animating).y)
 let digt7 = CGPoint(x: t7.dg_center(animating).x, y: t7.dg_center(animating).y)
 let digt8 = CGPoint(x: t8.dg_center(animating).x, y: t8.dg_center(animating).y)
 let digt9 = CGPoint(x: t9.dg_center(animating).x, y: t9.dg_center(animating).y)
 let digt10 = CGPoint(x: t10.dg_center(animating).x, y: t10.dg_center(animating).y)
 let digt11 = CGPoint(x: t11.dg_center(animating).x, y: t11.dg_center(animating).y)
 let digt12 = CGPoint(x: t12.dg_center(animating).x, y: t12.dg_center(animating).y)
 let digt13 = CGPoint(x: t13.dg_center(animating).x, y: t13.dg_center(animating).y)
 let digt14 = CGPoint(x: t14.dg_center(animating).x, y: t14.dg_center(animating).y)
 let digt15 = CGPoint(x: t15.dg_center(animating).x, y: t15.dg_center(animating).y)
 let digt16 = CGPoint(x: t16.dg_center(animating).x, y: t16.dg_center(animating).y)
 let digt17 = CGPoint(x: t17.dg_center(animating).x, y: t17.dg_center(animating).y)
 let digt18 = CGPoint(x: t18.dg_center(animating).x, y: t18.dg_center(animating).y)
 let digt19 = CGPoint(x: t19.dg_center(animating).x, y: t19.dg_center(animating).y)
 let digt20 = CGPoint(x: t20.dg_center(animating).x, y: t20.dg_center(animating).y)
 let digt21 = CGPoint(x: t21.dg_center(animating).x, y: t21.dg_center(animating).y)
 let digt22 = CGPoint(x: t22.dg_center(animating).x, y: t22.dg_center(animating).y)
 let digt23 = CGPoint(x: t23.dg_center(animating).x, y: t23.dg_center(animating).y)
 let digt24 = CGPoint(x: t24.dg_center(animating).x, y: t24.dg_center(animating).y)
 let digt25 = CGPoint(x: t25.dg_center(animating).x, y: t25.dg_center(animating).y)
 let digt26 = CGPoint(x: t26.dg_center(animating).x, y: t26.dg_center(animating).y)
 let digt27 = CGPoint(x: t27.dg_center(animating).x, y: t27.dg_center(animating).y)
 let digt28 = CGPoint(x: t28.dg_center(animating).x, y: t28.dg_center(animating).y)
 let digt29 = CGPoint(x: t29.dg_center(animating).x, y: t29.dg_center(animating).y)
 let digt30 = CGPoint(x: t30.dg_center(animating).x, y: t30.dg_center(animating).y)
 let digt31 = CGPoint(x: t31.dg_center(animating).x, y: t31.dg_center(animating).y)
 let digt32 = CGPoint(x: t32.dg_center(animating).x, y: t32.dg_center(animating).y)
 let digt33 = CGPoint(x: t33.dg_center(animating).x, y: t33.dg_center(animating).y)
 let digt34 = CGPoint(x: t34.dg_center(animating).x, y: t34.dg_center(animating).y)
 let digt35 = CGPoint(x: t35.dg_center(animating).x, y: t35.dg_center(animating).y)
 
 let bezierPath = UIBezierPath()
 
 bezierPath.move(to: digb1)
 bezierPath.addLine(to: digb2)
 
 //        for (i,g) in viesB.enumerated() {
 //            print("lll")
 //
 //            bezierPath.addLine(to: curve(view: g))
 //
 //        }
 bezierPath.addLine(to: digb3)
 bezierPath.addLine(to: digb4)
 bezierPath.addLine(to: digb5)
 bezierPath.addLine(to: digb6)
 bezierPath.addLine(to: digb7)
 bezierPath.addLine(to: digb8)
 bezierPath.addLine(to: digb9)
 bezierPath.addLine(to: digb10)
 bezierPath.addLine(to: digb11)
 bezierPath.addLine(to: digb12)
 bezierPath.addLine(to: digb13)
 bezierPath.addLine(to: digb14)
 bezierPath.addLine(to: digb15)
 bezierPath.addLine(to: digb16)
 bezierPath.addLine(to: digb17)
 bezierPath.addLine(to: digb18)
 bezierPath.addLine(to: digb19)
 bezierPath.addLine(to: digb20)
 bezierPath.addLine(to: digb21)
 bezierPath.addLine(to: digb22)
 bezierPath.addLine(to: digb23)
 bezierPath.addLine(to: digb24)
 bezierPath.addLine(to: digb25)
 bezierPath.addLine(to: digb26)
 bezierPath.addLine(to: digb27)
 bezierPath.addLine(to: digb28)
 bezierPath.addLine(to: digb29)
 bezierPath.addLine(to: digb30)
 bezierPath.addLine(to: digb31)
 bezierPath.addLine(to: digb32)
 bezierPath.addLine(to: digb33)
 bezierPath.addLine(to: digb34)
 bezierPath.addLine(to: digb35)
 
 bezierPath.addLine(to: digt35)
 bezierPath.addLine(to: digt34)
 bezierPath.addLine(to: digt33)
 bezierPath.addLine(to: digt32)
 bezierPath.addLine(to: digt31)
 bezierPath.addLine(to: digt30)
 bezierPath.addLine(to: digt29)
 bezierPath.addLine(to: digt28)
 bezierPath.addLine(to: digt27)
 bezierPath.addLine(to: digt26)
 bezierPath.addLine(to: digt25)
 bezierPath.addLine(to: digt24)
 bezierPath.addLine(to: digt23)
 bezierPath.addLine(to: digt22)
 bezierPath.addLine(to: digt21)
 bezierPath.addLine(to: digt20)
 bezierPath.addLine(to: digt19)
 bezierPath.addLine(to: digt18)
 bezierPath.addLine(to: digt17)
 bezierPath.addLine(to: digt16)
 bezierPath.addLine(to: digt15)
 bezierPath.addLine(to: digt14)
 bezierPath.addLine(to: digt13)
 bezierPath.addLine(to: digt12)
 bezierPath.addLine(to: digt11)
 bezierPath.addLine(to: digt10)
 bezierPath.addLine(to: digt9)
 bezierPath.addLine(to: digt8)
 bezierPath.addLine(to: digt7)
 bezierPath.addLine(to: digt6)
 bezierPath.addLine(to: digt5)
 bezierPath.addLine(to: digt4)
 bezierPath.addLine(to: digt3)
 bezierPath.addLine(to: digt2)
 bezierPath.addLine(to: digt1)
 
 bezierPath.close()
 
 //        for v in vies {
 //            v.bounds = CGRect(x: 0, y: 0, width: 5, height: 5)
 //            v.backgroundColor = .black
 //        }
 
 return bezierPath.cgPath
 
 }
 
 
 func updateLoop() {
 elasticShape.path = bezierPathForControlPoints()
 }
 
 fileprivate func startUpdateLoop() {
 displayLink.isPaused = false
 }
 
 fileprivate func stopUpdateLoop() {
 displayLink.isPaused = true
 }
 
 @IBInspectable var overshootAmount : CGFloat = 10
 
 
 
 
 override var backgroundColor: UIColor? {
 willSet {
 if let newValue = newValue {
 elasticShape.fillColor = newValue.cgColor
 super.backgroundColor = UIColor.blue
 }
 }
 }
 
 
 }
 extension UIView {
 func dg_center(_ usePresentationLayerIfPossible: Bool) -> CGPoint {
 if usePresentationLayerIfPossible, let presentationLayer = layer.presentation()
 {
 
 return presentationLayer.position
 }
 return center
 }
 }
 */
