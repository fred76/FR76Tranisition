 
import UIKit


class CustomView: UIView, CAAnimationDelegate {
    
    var layers : Dictionary<String, AnyObject> = [:]
    var completionBlocks : Dictionary<CAAnimation, (Bool) -> Void> = [:]
    var updateLayerValueForCompletedAnimation : Bool = false
    
    
    
    //MARK: - Life Cycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupProperties()
        setupLayers()
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        setupProperties()
        setupLayers()
    }
    
    override var frame: CGRect{
        didSet{
            setupLayerFrames()
        }
    }
    
    override var bounds: CGRect{
        didSet{
            setupLayerFrames()
        }
    }
    
    func setupProperties(){
        
    }
    
    func setupLayers(){
        self.backgroundColor = UIColor.clear
        
        let path = CAShapeLayer()
        self.layer.addSublayer(path)
        layers["path"] = path
        
        let path2 = CAShapeLayer()
        self.layer.addSublayer(path2)
        layers["path2"] = path2
        
        let oval = CAShapeLayer()
        self.layer.addSublayer(oval)
        layers["oval"] = oval
        
        resetLayerProperties(forLayerIdentifiers: nil)
        setupLayerFrames()
    }
    
    func resetLayerProperties(forLayerIdentifiers layerIds: [String]!){
        CATransaction.begin()
        CATransaction.setDisableActions(true)
        
        if layerIds == nil || layerIds.contains("path"){
            let path = layers["path"] as! CAShapeLayer
            path.fillColor     = nil
            path.strokeColor   = UIColor.white.cgColor
            path.lineWidth     = 2
            path.shadowColor   = UIColor.white.cgColor
            path.shadowOpacity = 1
            path.shadowOffset  = CGSize(width: 4, height: -1)
            path.shadowRadius  = 2
        }
        if layerIds == nil || layerIds.contains("path2"){
            let path2 = layers["path2"] as! CAShapeLayer
            path2.lineCap         = kCALineCapRound
            path2.miterLimit      = 9
            path2.fillColor       = nil
            path2.strokeColor     = UIColor.cyan.cgColor
            path2.lineWidth       = 4
            path2.strokeStart     = 1
            path2.lineDashPattern = [4, 10]
            path2.lineDashPhase   = 7
            path2.shadowColor     = UIColor(red:0, green: 0, blue:0, alpha:0.333).cgColor
            path2.shadowOpacity = 0.33
            path2.shadowOffset  = CGSize(width: 4, height: -1)
            path2.shadowRadius  = 2
        }
        if layerIds == nil || layerIds.contains("oval"){
            let oval = layers["oval"] as! CAShapeLayer
            oval.fillColor       = UIColor(red:0.996, green: 0.991, blue:1, alpha:1).cgColor
            oval.strokeColor     = UIColor(red:0.329, green: 0.329, blue:0.329, alpha:1).cgColor
            oval.lineWidth       = 0
            oval.lineDashPattern = [2, 1]
        }
        
        CATransaction.commit()
    }
    
    func setupLayerFrames(){
        CATransaction.begin()
        CATransaction.setDisableActions(true)
        
        if let path : CAShapeLayer = layers["path"] as? CAShapeLayer{
            path.frame = CGRect(x: 0.0005 * path.superlayer!.bounds.width, y: -0.0025 * path.superlayer!.bounds.height, width:  path.superlayer!.bounds.width, height: 1 * path.superlayer!.bounds.height)
            path.path  = pathPath(bounds: (layers["path"] as! CAShapeLayer).bounds).cgPath
        }
        
        if let path2 : CAShapeLayer = layers["path2"] as? CAShapeLayer{
            path2.frame = CGRect(x: 0.0005 * path2.superlayer!.bounds.width, y: -0.00084 * path2.superlayer!.bounds.height, width:  path2.superlayer!.bounds.width, height: 1.00168 * path2.superlayer!.bounds.height)
            path2.path  = path2Path(bounds: (layers["path2"] as! CAShapeLayer).bounds).cgPath
        }
        
        if let oval : CAShapeLayer = layers["oval"] as? CAShapeLayer{
            oval.frame = CGRect(x: -0.0075 * oval.superlayer!.bounds.width, y: -0.0375 * oval.superlayer!.bounds.height, width: 0.015 * oval.superlayer!.bounds.width, height: 0.075 * oval.superlayer!.bounds.height)
            oval.path  = ovalPath(bounds: (layers["oval"] as! CAShapeLayer).bounds).cgPath
        }
        
        CATransaction.commit()
    }
    
    //MARK: - Animation Setup
    
    func addUntitled1Animation(totalDuration: CFTimeInterval = 1.072, completionBlock: ((_ finished: Bool) -> Void)? = nil){
        if completionBlock != nil{
            let completionAnim = CABasicAnimation(keyPath:"completionAnim")
            completionAnim.duration = totalDuration
            completionAnim.delegate = self
            completionAnim.setValue("Untitled1", forKey:"animId")
            completionAnim.setValue(false, forKey:"needEndAnim")
            layer.add(completionAnim, forKey:"Untitled1")
            if let anim = layer.animation(forKey: "Untitled1"){
                completionBlocks[anim] = completionBlock
            }
        }
        
        let fillMode : String = kCAFillModeForwards
        
        ////Path animation
        let pathStrokeEndAnim      = CAKeyframeAnimation(keyPath:"strokeEnd")
        pathStrokeEndAnim.values   = [0, 1]
        pathStrokeEndAnim.keyTimes = [0, 1]
        pathStrokeEndAnim.duration = 0.832 * totalDuration
        
        let pathStrokeStartAnim       = CAKeyframeAnimation(keyPath:"strokeStart")
        pathStrokeStartAnim.values    = [0, 1]
        pathStrokeStartAnim.keyTimes  = [0, 1]
        pathStrokeStartAnim.duration  = 0.521 * totalDuration
        pathStrokeStartAnim.beginTime = 0.442 * totalDuration
        
        let pathUntitled1Anim : CAAnimationGroup = QCMethod.group(animations: [pathStrokeEndAnim, pathStrokeStartAnim], fillMode:fillMode)
        layers["path"]?.add(pathUntitled1Anim, forKey:"pathUntitled1Anim")
        
        ////Path2 animation
        let path2StrokeEndAnim      = CAKeyframeAnimation(keyPath:"strokeEnd")
        path2StrokeEndAnim.values   = [0, 1]
        path2StrokeEndAnim.keyTimes = [0, 1]
        path2StrokeEndAnim.duration = 0.832 * totalDuration
        
        let path2StrokeStartAnim       = CAKeyframeAnimation(keyPath:"strokeStart")
        path2StrokeStartAnim.values    = [0, 1]
        path2StrokeStartAnim.keyTimes  = [0, 1]
        path2StrokeStartAnim.duration  = 0.521 * totalDuration
        path2StrokeStartAnim.beginTime = 0.442 * totalDuration
        
        let path2OpacityAnim      = CAKeyframeAnimation(keyPath:"opacity")
        path2OpacityAnim.values   = [1, 1, 1, 0]
        path2OpacityAnim.keyTimes = [0, 0.172, 0.965, 1]
        path2OpacityAnim.duration = totalDuration
        
        let path2Untitled1Anim : CAAnimationGroup = QCMethod.group(animations: [path2StrokeEndAnim, path2StrokeStartAnim, path2OpacityAnim], fillMode:fillMode)
        layers["path2"]?.add(path2Untitled1Anim, forKey:"path2Untitled1Anim")
        
        let oval = layers["oval"] as! CAShapeLayer
        
        ////Oval animation
        let ovalPositionAnim             = CAKeyframeAnimation(keyPath:"position")
        ovalPositionAnim.path            = pathPath(bounds: (layers["path"]?.superlayer??.convert((layers["path"] as! CAShapeLayer).frame, to:layers["oval"]?.superlayer))!).cgPath
        ovalPositionAnim.calculationMode = kCAAnimationPaced
        ovalPositionAnim.duration        = 0.832 * totalDuration
        
        let ovalUntitled1Anim : CAAnimationGroup = QCMethod.group(animations: [ovalPositionAnim], fillMode:fillMode)
        oval.add(ovalUntitled1Anim, forKey:"ovalUntitled1Anim")
    }
    
    //MARK: - Animation Cleanup
    
    func animationDidStop(_ anim: CAAnimation, finished flag: Bool){
        if let completionBlock = completionBlocks[anim]{
            completionBlocks.removeValue(forKey: anim)
            if (flag && updateLayerValueForCompletedAnimation) || anim.value(forKey: "needEndAnim") as! Bool{
                updateLayerValues(forAnimationId: anim.value(forKey: "animId") as! String)
                removeAnimations(forAnimationId: anim.value(forKey: "animId") as! String)
            }
            completionBlock(flag)
        }
    }
    
    func updateLayerValues(forAnimationId identifier: String){
        if identifier == "Untitled1"{
            QCMethod.updateValueFromPresentationLayer(forAnimation: (layers["path"] as! CALayer).animation(forKey: "pathUntitled1Anim"), theLayer:(layers["path"] as! CALayer))
            QCMethod.updateValueFromPresentationLayer(forAnimation: (layers["path2"] as! CALayer).animation(forKey: "path2Untitled1Anim"), theLayer:(layers["path2"] as! CALayer))
            QCMethod.updateValueFromPresentationLayer(forAnimation: (layers["oval"] as! CALayer).animation(forKey: "ovalUntitled1Anim"), theLayer:(layers["oval"] as! CALayer))
        }
    }
    
    func removeAnimations(forAnimationId identifier: String){
        if identifier == "Untitled1"{
            (layers["path"] as! CALayer).removeAnimation(forKey: "pathUntitled1Anim")
            (layers["path2"] as! CALayer).removeAnimation(forKey: "path2Untitled1Anim")
            (layers["oval"] as! CALayer).removeAnimation(forKey: "ovalUntitled1Anim")
        }
    }
    
    func removeAllAnimations(){
        for layer in layers.values{
            (layer as! CALayer).removeAllAnimations()
        }
    }
    
    //MARK: - Bezier Path
    
    func pathPath(bounds: CGRect) -> UIBezierPath{
        let pathPath = UIBezierPath()
        let minX = CGFloat(bounds.minX), minY = bounds.minY, w = bounds.width, h = bounds.height;
        
        pathPath.move(to: CGPoint(x:minX + 0.00069 * w, y: minY + 0.02339 * h))
        pathPath.addCurve(to: CGPoint(x:minX + 0.01456 * w, y: minY + 0.96358 * h), controlPoint1:CGPoint(x:minX + -0.00251 * w, y: minY + 0.03366 * h), controlPoint2:CGPoint(x:minX + 0.00596 * w, y: minY + 1.22057 * h))
        pathPath.addCurve(to: CGPoint(x:minX + 0.02538 * w, y: minY + 0.6623 * h), controlPoint1:CGPoint(x:minX + 0.02317 * w, y: minY + 0.70659 * h), controlPoint2:CGPoint(x:minX + 0.01558 * w, y: minY + 0.5798 * h))
        pathPath.addCurve(to: CGPoint(x:minX + 0.04069 * w, y: minY + 0.59254 * h), controlPoint1:CGPoint(x:minX + 0.03517 * w, y: minY + 0.74481 * h), controlPoint2:CGPoint(x:minX + 0.03431 * w, y: minY + 0.75132 * h))
        pathPath.addLine(to: CGPoint(x:minX + 0.05446 * w, y: minY + 0.60434 * h))
        pathPath.addCurve(to: CGPoint(x:minX + 0.08768 * w, y: minY + 0.60467 * h), controlPoint1:CGPoint(x:minX + 0.05446 * w, y: minY + 0.60434 * h), controlPoint2:CGPoint(x:minX + 0.06671 * w, y: minY + 0.24398 * h))
        pathPath.addCurve(to: CGPoint(x:minX + 0.12176 * w, y: minY + 0.62191 * h), controlPoint1:CGPoint(x:minX + 0.10865 * w, y: minY + 0.96536 * h), controlPoint2:CGPoint(x:minX + 0.11083 * w, y: minY + 0.58995 * h))
        pathPath.addCurve(to: CGPoint(x:minX + 0.1568 * w, y: minY + 0.73003 * h), controlPoint1:CGPoint(x:minX + 0.13269 * w, y: minY + 0.65388 * h), controlPoint2:CGPoint(x:minX + 0.13996 * w, y: minY + 0.81147 * h))
        pathPath.addCurve(to: CGPoint(x:minX + 0.18075 * w, y: minY + 0.68082 * h), controlPoint1:CGPoint(x:minX + 0.17365 * w, y: minY + 0.64859 * h), controlPoint2:CGPoint(x:minX + 0.17595 * w, y: minY + 0.56945 * h))
        pathPath.addCurve(to: CGPoint(x:minX + 0.19224 * w, y: minY + 0.67356 * h), controlPoint1:CGPoint(x:minX + 0.18554 * w, y: minY + 0.79219 * h), controlPoint2:CGPoint(x:minX + 0.18716 * w, y: minY + 0.81097 * h))
        pathPath.addCurve(to: CGPoint(x:minX + 0.20002 * w, y: minY + 0.01177 * h), controlPoint1:CGPoint(x:minX + 0.19731 * w, y: minY + 0.53615 * h), controlPoint2:CGPoint(x:minX + 0.20002 * w, y: minY + 0.01177 * h))
        pathPath.addCurve(to: CGPoint(x:minX + 0.21462 * w, y: minY + 0.97075 * h), controlPoint1:CGPoint(x:minX + 0.20002 * w, y: minY + 0.01177 * h), controlPoint2:CGPoint(x:minX + 0.21062 * w, y: minY + 1.01201 * h))
        pathPath.addCurve(to: CGPoint(x:minX + 0.2213 * w, y: minY + 0.64361 * h), controlPoint1:CGPoint(x:minX + 0.21862 * w, y: minY + 0.92948 * h), controlPoint2:CGPoint(x:minX + 0.21653 * w, y: minY + 0.62338 * h))
        pathPath.addCurve(to: CGPoint(x:minX + 0.23844 * w, y: minY + 0.75049 * h), controlPoint1:CGPoint(x:minX + 0.22608 * w, y: minY + 0.66383 * h), controlPoint2:CGPoint(x:minX + 0.23728 * w, y: minY + 0.79551 * h))
        pathPath.addCurve(to: CGPoint(x:minX + 0.24092 * w, y: minY + 0.60171 * h), controlPoint1:CGPoint(x:minX + 0.23961 * w, y: minY + 0.70546 * h), controlPoint2:CGPoint(x:minX + 0.23296 * w, y: minY + 0.59739 * h))
        pathPath.addCurve(to: CGPoint(x:minX + 0.25651 * w, y: minY + 0.61436 * h), controlPoint1:CGPoint(x:minX + 0.24888 * w, y: minY + 0.60603 * h), controlPoint2:CGPoint(x:minX + 0.25651 * w, y: minY + 0.61436 * h))
        pathPath.addCurve(to: CGPoint(x:minX + 0.28905 * w, y: minY + 0.60765 * h), controlPoint1:CGPoint(x:minX + 0.25651 * w, y: minY + 0.61436 * h), controlPoint2:CGPoint(x:minX + 0.26374 * w, y: minY + 0.189 * h))
        pathPath.addCurve(to: CGPoint(x:minX + 0.32256 * w, y: minY + 0.61294 * h), controlPoint1:CGPoint(x:minX + 0.31436 * w, y: minY + 1.02631 * h), controlPoint2:CGPoint(x:minX + 0.3108 * w, y: minY + 0.5728 * h))
        pathPath.addCurve(to: CGPoint(x:minX + 0.36342 * w, y: minY + 0.70333 * h), controlPoint1:CGPoint(x:minX + 0.33433 * w, y: minY + 0.65308 * h), controlPoint2:CGPoint(x:minX + 0.34177 * w, y: minY + 0.85035 * h))
        pathPath.addCurve(to: CGPoint(x:minX + 0.38586 * w, y: minY + 0.74574 * h), controlPoint1:CGPoint(x:minX + 0.38506 * w, y: minY + 0.55632 * h), controlPoint2:CGPoint(x:minX + 0.38061 * w, y: minY + 0.77141 * h))
        pathPath.addCurve(to: CGPoint(x:minX + 0.39993 * w, y: minY + 0.00001 * h), controlPoint1:CGPoint(x:minX + 0.39112 * w, y: minY + 0.72007 * h), controlPoint2:CGPoint(x:minX + 0.39993 * w, y: minY + 0.00344 * h))
        pathPath.addCurve(to: CGPoint(x:minX + 0.41685 * w, y: minY + 0.94285 * h), controlPoint1:CGPoint(x:minX + 0.39993 * w, y: minY + -0.00342 * h), controlPoint2:CGPoint(x:minX + 0.40998 * w, y: minY + 1.21007 * h))
        pathPath.addCurve(to: CGPoint(x:minX + 0.42979 * w, y: minY + 0.70068 * h), controlPoint1:CGPoint(x:minX + 0.42372 * w, y: minY + 0.67563 * h), controlPoint2:CGPoint(x:minX + 0.41476 * w, y: minY + 0.54041 * h))
        pathPath.addCurve(to: CGPoint(x:minX + 0.4413 * w, y: minY + 0.61112 * h), controlPoint1:CGPoint(x:minX + 0.44482 * w, y: minY + 0.86095 * h), controlPoint2:CGPoint(x:minX + 0.4413 * w, y: minY + 0.61112 * h))
        pathPath.addLine(to: CGPoint(x:minX + 0.45515 * w, y: minY + 0.60841 * h))
        pathPath.addCurve(to: CGPoint(x:minX + 0.48966 * w, y: minY + 0.60355 * h), controlPoint1:CGPoint(x:minX + 0.45515 * w, y: minY + 0.60841 * h), controlPoint2:CGPoint(x:minX + 0.46871 * w, y: minY + 0.21004 * h))
        pathPath.addCurve(to: CGPoint(x:minX + 0.52237 * w, y: minY + 0.61992 * h), controlPoint1:CGPoint(x:minX + 0.51061 * w, y: minY + 0.99705 * h), controlPoint2:CGPoint(x:minX + 0.50884 * w, y: minY + 0.59163 * h))
        pathPath.addCurve(to: CGPoint(x:minX + 0.56249 * w, y: minY + 0.70804 * h), controlPoint1:CGPoint(x:minX + 0.53589 * w, y: minY + 0.6482 * h), controlPoint2:CGPoint(x:minX + 0.54124 * w, y: minY + 0.84725 * h))
        pathPath.addCurve(to: CGPoint(x:minX + 0.58487 * w, y: minY + 0.74754 * h), controlPoint1:CGPoint(x:minX + 0.58373 * w, y: minY + 0.56883 * h), controlPoint2:CGPoint(x:minX + 0.58255 * w, y: minY + 0.70661 * h))
        pathPath.addCurve(to: CGPoint(x:minX + 0.59984 * w, y: minY + 0.03153 * h), controlPoint1:CGPoint(x:minX + 0.58719 * w, y: minY + 0.78847 * h), controlPoint2:CGPoint(x:minX + 0.59868 * w, y: minY + 0.05946 * h))
        pathPath.addCurve(to: CGPoint(x:minX + 0.61426 * w, y: minY + 0.99027 * h), controlPoint1:CGPoint(x:minX + 0.601 * w, y: minY + 0.00359 * h), controlPoint2:CGPoint(x:minX + 0.60834 * w, y: minY + 1.03863 * h))
        pathPath.addCurve(to: CGPoint(x:minX + 0.62256 * w, y: minY + 0.63288 * h), controlPoint1:CGPoint(x:minX + 0.62019 * w, y: minY + 0.94192 * h), controlPoint2:CGPoint(x:minX + 0.61695 * w, y: minY + 0.58131 * h))
        pathPath.addCurve(to: CGPoint(x:minX + 0.6412 * w, y: minY + 0.59254 * h), controlPoint1:CGPoint(x:minX + 0.62817 * w, y: minY + 0.68445 * h), controlPoint2:CGPoint(x:minX + 0.63638 * w, y: minY + 0.85916 * h))
        pathPath.addLine(to: CGPoint(x:minX + 0.65344 * w, y: minY + 0.60597 * h))
        pathPath.addCurve(to: CGPoint(x:minX + 0.68851 * w, y: minY + 0.60025 * h), controlPoint1:CGPoint(x:minX + 0.65344 * w, y: minY + 0.60597 * h), controlPoint2:CGPoint(x:minX + 0.66972 * w, y: minY + 0.19253 * h))
        pathPath.addCurve(to: CGPoint(x:minX + 0.72116 * w, y: minY + 0.6259 * h), controlPoint1:CGPoint(x:minX + 0.7073 * w, y: minY + 1.00798 * h), controlPoint2:CGPoint(x:minX + 0.71196 * w, y: minY + 0.6179 * h))
        pathPath.addCurve(to: CGPoint(x:minX + 0.74858 * w, y: minY + 0.75608 * h), controlPoint1:CGPoint(x:minX + 0.73036 * w, y: minY + 0.6339 * h), controlPoint2:CGPoint(x:minX + 0.74351 * w, y: minY + 0.75963 * h))
        pathPath.addCurve(to: CGPoint(x:minX + 0.77773 * w, y: minY + 0.64419 * h), controlPoint1:CGPoint(x:minX + 0.75364 * w, y: minY + 0.75254 * h), controlPoint2:CGPoint(x:minX + 0.77738 * w, y: minY + 0.66734 * h))
        pathPath.addCurve(to: CGPoint(x:minX + 0.79233 * w, y: minY + 0.63687 * h), controlPoint1:CGPoint(x:minX + 0.77809 * w, y: minY + 0.62104 * h), controlPoint2:CGPoint(x:minX + 0.78368 * w, y: minY + 0.97032 * h))
        pathPath.addCurve(to: CGPoint(x:minX + 0.79938 * w, y: minY + 0.0089 * h), controlPoint1:CGPoint(x:minX + 0.80097 * w, y: minY + 0.30341 * h), controlPoint2:CGPoint(x:minX + 0.79938 * w, y: minY + 0.0089 * h))
        pathPath.addCurve(to: CGPoint(x:minX + 0.81483 * w, y: minY + 0.96414 * h), controlPoint1:CGPoint(x:minX + 0.79938 * w, y: minY + 0.0089 * h), controlPoint2:CGPoint(x:minX + 0.8125 * w, y: minY + 0.96583 * h))
        pathPath.addCurve(to: CGPoint(x:minX + 0.82379 * w, y: minY + 0.6458 * h), controlPoint1:CGPoint(x:minX + 0.81715 * w, y: minY + 0.96246 * h), controlPoint2:CGPoint(x:minX + 0.82349 * w, y: minY + 0.66542 * h))
        pathPath.addCurve(to: CGPoint(x:minX + 0.83622 * w, y: minY + 0.72319 * h), controlPoint1:CGPoint(x:minX + 0.82408 * w, y: minY + 0.62617 * h), controlPoint2:CGPoint(x:minX + 0.83033 * w, y: minY + 0.7358 * h))
        pathPath.addCurve(to: CGPoint(x:minX + 0.84187 * w, y: minY + 0.6131 * h), controlPoint1:CGPoint(x:minX + 0.84211 * w, y: minY + 0.71058 * h), controlPoint2:CGPoint(x:minX + 0.84177 * w, y: minY + 0.62546 * h))
        pathPath.addCurve(to: CGPoint(x:minX + 0.85497 * w, y: minY + 0.60957 * h), controlPoint1:CGPoint(x:minX + 0.84197 * w, y: minY + 0.60074 * h), controlPoint2:CGPoint(x:minX + 0.85497 * w, y: minY + 0.60957 * h))
        pathPath.addCurve(to: CGPoint(x:minX + 0.88973 * w, y: minY + 0.59254 * h), controlPoint1:CGPoint(x:minX + 0.85497 * w, y: minY + 0.60957 * h), controlPoint2:CGPoint(x:minX + 0.86699 * w, y: minY + 0.22329 * h))
        pathPath.addCurve(to: CGPoint(x:minX + 0.92148 * w, y: minY + 0.62557 * h), controlPoint1:CGPoint(x:minX + 0.91247 * w, y: minY + 0.9618 * h), controlPoint2:CGPoint(x:minX + 0.90307 * w, y: minY + 0.64003 * h))
        pathPath.addCurve(to: CGPoint(x:minX + 0.95647 * w, y: minY + 0.71259 * h), controlPoint1:CGPoint(x:minX + 0.93988 * w, y: minY + 0.61112 * h), controlPoint2:CGPoint(x:minX + 0.93655 * w, y: minY + 0.82071 * h))
        pathPath.addCurve(to: CGPoint(x:minX + 0.98724 * w, y: minY + 0.76377 * h), controlPoint1:CGPoint(x:minX + 0.97638 * w, y: minY + 0.60448 * h), controlPoint2:CGPoint(x:minX + 0.98008 * w, y: minY + 0.60762 * h))
        pathPath.addCurve(to: CGPoint(x:minX + w, y: minY + 0.00506 * h), controlPoint1:CGPoint(x:minX + 0.99439 * w, y: minY + 0.91993 * h), controlPoint2:CGPoint(x:minX + 0.99881 * w, y: minY + 0.01625 * h))
        
        return pathPath
    }
    
    func path2Path(bounds: CGRect) -> UIBezierPath{
        let path2Path = UIBezierPath()
        let minX = CGFloat(bounds.minX), minY = bounds.minY, w = bounds.width, h = bounds.height;
        
        path2Path.move(to: CGPoint(x:minX + 0.00069 * w, y: minY + 0.02171 * h))
        path2Path.addCurve(to: CGPoint(x:minX + 0.01456 * w, y: minY + 0.9619 * h), controlPoint1:CGPoint(x:minX + -0.00251 * w, y: minY + 0.03199 * h), controlPoint2:CGPoint(x:minX + 0.00596 * w, y: minY + 1.2189 * h))
        path2Path.addCurve(to: CGPoint(x:minX + 0.02538 * w, y: minY + 0.66063 * h), controlPoint1:CGPoint(x:minX + 0.02317 * w, y: minY + 0.70491 * h), controlPoint2:CGPoint(x:minX + 0.01558 * w, y: minY + 0.57812 * h))
        path2Path.addCurve(to: CGPoint(x:minX + 0.04069 * w, y: minY + 0.59087 * h), controlPoint1:CGPoint(x:minX + 0.03517 * w, y: minY + 0.74313 * h), controlPoint2:CGPoint(x:minX + 0.03431 * w, y: minY + 0.74964 * h))
        path2Path.addLine(to: CGPoint(x:minX + 0.05446 * w, y: minY + 0.60267 * h))
        path2Path.addCurve(to: CGPoint(x:minX + 0.08768 * w, y: minY + 0.603 * h), controlPoint1:CGPoint(x:minX + 0.05446 * w, y: minY + 0.60267 * h), controlPoint2:CGPoint(x:minX + 0.06671 * w, y: minY + 0.24231 * h))
        path2Path.addCurve(to: CGPoint(x:minX + 0.12176 * w, y: minY + 0.62024 * h), controlPoint1:CGPoint(x:minX + 0.10865 * w, y: minY + 0.96369 * h), controlPoint2:CGPoint(x:minX + 0.11083 * w, y: minY + 0.58827 * h))
        path2Path.addCurve(to: CGPoint(x:minX + 0.1568 * w, y: minY + 0.72835 * h), controlPoint1:CGPoint(x:minX + 0.13269 * w, y: minY + 0.6522 * h), controlPoint2:CGPoint(x:minX + 0.13996 * w, y: minY + 0.80979 * h))
        path2Path.addCurve(to: CGPoint(x:minX + 0.18075 * w, y: minY + 0.67915 * h), controlPoint1:CGPoint(x:minX + 0.17365 * w, y: minY + 0.64691 * h), controlPoint2:CGPoint(x:minX + 0.17595 * w, y: minY + 0.56778 * h))
        path2Path.addCurve(to: CGPoint(x:minX + 0.19224 * w, y: minY + 0.67188 * h), controlPoint1:CGPoint(x:minX + 0.18554 * w, y: minY + 0.79052 * h), controlPoint2:CGPoint(x:minX + 0.18716 * w, y: minY + 0.80929 * h))
        path2Path.addCurve(to: CGPoint(x:minX + 0.20002 * w, y: minY + 0.01009 * h), controlPoint1:CGPoint(x:minX + 0.19731 * w, y: minY + 0.53448 * h), controlPoint2:CGPoint(x:minX + 0.20002 * w, y: minY + 0.01009 * h))
        path2Path.addCurve(to: CGPoint(x:minX + 0.21462 * w, y: minY + 0.96907 * h), controlPoint1:CGPoint(x:minX + 0.20002 * w, y: minY + 0.01009 * h), controlPoint2:CGPoint(x:minX + 0.21062 * w, y: minY + 1.01033 * h))
        path2Path.addCurve(to: CGPoint(x:minX + 0.2213 * w, y: minY + 0.64193 * h), controlPoint1:CGPoint(x:minX + 0.21862 * w, y: minY + 0.92781 * h), controlPoint2:CGPoint(x:minX + 0.21653 * w, y: minY + 0.62171 * h))
        path2Path.addCurve(to: CGPoint(x:minX + 0.23844 * w, y: minY + 0.74881 * h), controlPoint1:CGPoint(x:minX + 0.22608 * w, y: minY + 0.66216 * h), controlPoint2:CGPoint(x:minX + 0.23728 * w, y: minY + 0.79383 * h))
        path2Path.addCurve(to: CGPoint(x:minX + 0.24092 * w, y: minY + 0.60003 * h), controlPoint1:CGPoint(x:minX + 0.23961 * w, y: minY + 0.70379 * h), controlPoint2:CGPoint(x:minX + 0.23296 * w, y: minY + 0.59571 * h))
        path2Path.addCurve(to: CGPoint(x:minX + 0.25651 * w, y: minY + 0.61268 * h), controlPoint1:CGPoint(x:minX + 0.24888 * w, y: minY + 0.60435 * h), controlPoint2:CGPoint(x:minX + 0.25651 * w, y: minY + 0.61268 * h))
        path2Path.addCurve(to: CGPoint(x:minX + 0.28905 * w, y: minY + 0.60598 * h), controlPoint1:CGPoint(x:minX + 0.25651 * w, y: minY + 0.61268 * h), controlPoint2:CGPoint(x:minX + 0.26374 * w, y: minY + 0.18733 * h))
        path2Path.addCurve(to: CGPoint(x:minX + 0.32256 * w, y: minY + 0.61127 * h), controlPoint1:CGPoint(x:minX + 0.31436 * w, y: minY + 1.02463 * h), controlPoint2:CGPoint(x:minX + 0.3108 * w, y: minY + 0.57113 * h))
        path2Path.addCurve(to: CGPoint(x:minX + 0.36342 * w, y: minY + 0.70166 * h), controlPoint1:CGPoint(x:minX + 0.33433 * w, y: minY + 0.65141 * h), controlPoint2:CGPoint(x:minX + 0.34177 * w, y: minY + 0.84867 * h))
        path2Path.addCurve(to: CGPoint(x:minX + 0.38586 * w, y: minY + 0.74406 * h), controlPoint1:CGPoint(x:minX + 0.38506 * w, y: minY + 0.55464 * h), controlPoint2:CGPoint(x:minX + 0.38061 * w, y: minY + 0.76973 * h))
        path2Path.addCurve(to: CGPoint(x:minX + 0.39993 * w, y: minY + -0.00167 * h), controlPoint1:CGPoint(x:minX + 0.39112 * w, y: minY + 0.7184 * h), controlPoint2:CGPoint(x:minX + 0.39993 * w, y: minY + 0.00176 * h))
        path2Path.addCurve(to: CGPoint(x:minX + 0.41685 * w, y: minY + 0.94118 * h), controlPoint1:CGPoint(x:minX + 0.39993 * w, y: minY + -0.0051 * h), controlPoint2:CGPoint(x:minX + 0.40998 * w, y: minY + 1.2084 * h))
        path2Path.addCurve(to: CGPoint(x:minX + 0.42979 * w, y: minY + 0.699 * h), controlPoint1:CGPoint(x:minX + 0.42372 * w, y: minY + 0.67396 * h), controlPoint2:CGPoint(x:minX + 0.41476 * w, y: minY + 0.53874 * h))
        path2Path.addCurve(to: CGPoint(x:minX + 0.4413 * w, y: minY + 0.60945 * h), controlPoint1:CGPoint(x:minX + 0.44482 * w, y: minY + 0.85927 * h), controlPoint2:CGPoint(x:minX + 0.4413 * w, y: minY + 0.60945 * h))
        path2Path.addLine(to: CGPoint(x:minX + 0.45515 * w, y: minY + 0.60673 * h))
        path2Path.addCurve(to: CGPoint(x:minX + 0.48966 * w, y: minY + 0.60187 * h), controlPoint1:CGPoint(x:minX + 0.45515 * w, y: minY + 0.60673 * h), controlPoint2:CGPoint(x:minX + 0.46871 * w, y: minY + 0.20837 * h))
        path2Path.addCurve(to: CGPoint(x:minX + 0.52237 * w, y: minY + 0.61824 * h), controlPoint1:CGPoint(x:minX + 0.51061 * w, y: minY + 0.99538 * h), controlPoint2:CGPoint(x:minX + 0.50884 * w, y: minY + 0.58996 * h))
        path2Path.addCurve(to: CGPoint(x:minX + 0.56249 * w, y: minY + 0.70637 * h), controlPoint1:CGPoint(x:minX + 0.53589 * w, y: minY + 0.64653 * h), controlPoint2:CGPoint(x:minX + 0.54124 * w, y: minY + 0.84557 * h))
        path2Path.addCurve(to: CGPoint(x:minX + 0.58487 * w, y: minY + 0.74587 * h), controlPoint1:CGPoint(x:minX + 0.58373 * w, y: minY + 0.56716 * h), controlPoint2:CGPoint(x:minX + 0.58255 * w, y: minY + 0.70493 * h))
        path2Path.addCurve(to: CGPoint(x:minX + 0.59984 * w, y: minY + 0.02985 * h), controlPoint1:CGPoint(x:minX + 0.58719 * w, y: minY + 0.7868 * h), controlPoint2:CGPoint(x:minX + 0.59868 * w, y: minY + 0.05779 * h))
        path2Path.addCurve(to: CGPoint(x:minX + 0.61426 * w, y: minY + 0.9886 * h), controlPoint1:CGPoint(x:minX + 0.601 * w, y: minY + 0.00192 * h), controlPoint2:CGPoint(x:minX + 0.60834 * w, y: minY + 1.03695 * h))
        path2Path.addCurve(to: CGPoint(x:minX + 0.62256 * w, y: minY + 0.6312 * h), controlPoint1:CGPoint(x:minX + 0.62019 * w, y: minY + 0.94025 * h), controlPoint2:CGPoint(x:minX + 0.61695 * w, y: minY + 0.57963 * h))
        path2Path.addCurve(to: CGPoint(x:minX + 0.6412 * w, y: minY + 0.59087 * h), controlPoint1:CGPoint(x:minX + 0.62817 * w, y: minY + 0.68277 * h), controlPoint2:CGPoint(x:minX + 0.63638 * w, y: minY + 0.85749 * h))
        path2Path.addLine(to: CGPoint(x:minX + 0.65344 * w, y: minY + 0.60429 * h))
        path2Path.addCurve(to: CGPoint(x:minX + 0.68851 * w, y: minY + 0.59858 * h), controlPoint1:CGPoint(x:minX + 0.65344 * w, y: minY + 0.60429 * h), controlPoint2:CGPoint(x:minX + 0.66972 * w, y: minY + 0.19085 * h))
        path2Path.addCurve(to: CGPoint(x:minX + 0.72116 * w, y: minY + 0.62423 * h), controlPoint1:CGPoint(x:minX + 0.7073 * w, y: minY + 1.00631 * h), controlPoint2:CGPoint(x:minX + 0.71196 * w, y: minY + 0.61623 * h))
        path2Path.addCurve(to: CGPoint(x:minX + 0.74858 * w, y: minY + 0.75441 * h), controlPoint1:CGPoint(x:minX + 0.73036 * w, y: minY + 0.63223 * h), controlPoint2:CGPoint(x:minX + 0.74351 * w, y: minY + 0.75795 * h))
        path2Path.addCurve(to: CGPoint(x:minX + 0.77773 * w, y: minY + 0.64252 * h), controlPoint1:CGPoint(x:minX + 0.75364 * w, y: minY + 0.75086 * h), controlPoint2:CGPoint(x:minX + 0.77738 * w, y: minY + 0.66566 * h))
        path2Path.addCurve(to: CGPoint(x:minX + 0.79233 * w, y: minY + 0.63519 * h), controlPoint1:CGPoint(x:minX + 0.77809 * w, y: minY + 0.61937 * h), controlPoint2:CGPoint(x:minX + 0.78368 * w, y: minY + 0.96865 * h))
        path2Path.addCurve(to: CGPoint(x:minX + 0.79938 * w, y: minY + 0.00722 * h), controlPoint1:CGPoint(x:minX + 0.80097 * w, y: minY + 0.30174 * h), controlPoint2:CGPoint(x:minX + 0.79938 * w, y: minY + 0.00722 * h))
        path2Path.addCurve(to: CGPoint(x:minX + 0.81483 * w, y: minY + 0.96247 * h), controlPoint1:CGPoint(x:minX + 0.79938 * w, y: minY + 0.00722 * h), controlPoint2:CGPoint(x:minX + 0.8125 * w, y: minY + 0.96415 * h))
        path2Path.addCurve(to: CGPoint(x:minX + 0.82379 * w, y: minY + 0.64412 * h), controlPoint1:CGPoint(x:minX + 0.81715 * w, y: minY + 0.96078 * h), controlPoint2:CGPoint(x:minX + 0.82349 * w, y: minY + 0.66375 * h))
        path2Path.addCurve(to: CGPoint(x:minX + 0.83622 * w, y: minY + 0.72151 * h), controlPoint1:CGPoint(x:minX + 0.82408 * w, y: minY + 0.6245 * h), controlPoint2:CGPoint(x:minX + 0.83033 * w, y: minY + 0.73413 * h))
        path2Path.addCurve(to: CGPoint(x:minX + 0.84187 * w, y: minY + 0.61142 * h), controlPoint1:CGPoint(x:minX + 0.84211 * w, y: minY + 0.7089 * h), controlPoint2:CGPoint(x:minX + 0.84177 * w, y: minY + 0.62378 * h))
        path2Path.addCurve(to: CGPoint(x:minX + 0.85497 * w, y: minY + 0.6079 * h), controlPoint1:CGPoint(x:minX + 0.84197 * w, y: minY + 0.59906 * h), controlPoint2:CGPoint(x:minX + 0.85497 * w, y: minY + 0.6079 * h))
        path2Path.addCurve(to: CGPoint(x:minX + 0.88973 * w, y: minY + 0.59087 * h), controlPoint1:CGPoint(x:minX + 0.85497 * w, y: minY + 0.6079 * h), controlPoint2:CGPoint(x:minX + 0.86699 * w, y: minY + 0.22162 * h))
        path2Path.addCurve(to: CGPoint(x:minX + 0.92148 * w, y: minY + 0.6239 * h), controlPoint1:CGPoint(x:minX + 0.91247 * w, y: minY + 0.96012 * h), controlPoint2:CGPoint(x:minX + 0.90307 * w, y: minY + 0.63835 * h))
        path2Path.addCurve(to: CGPoint(x:minX + 0.95647 * w, y: minY + 0.71092 * h), controlPoint1:CGPoint(x:minX + 0.93988 * w, y: minY + 0.60945 * h), controlPoint2:CGPoint(x:minX + 0.93655 * w, y: minY + 0.81903 * h))
        path2Path.addCurve(to: CGPoint(x:minX + 0.98724 * w, y: minY + 0.7621 * h), controlPoint1:CGPoint(x:minX + 0.97638 * w, y: minY + 0.6028 * h), controlPoint2:CGPoint(x:minX + 0.98008 * w, y: minY + 0.60594 * h))
        path2Path.addCurve(to: CGPoint(x:minX + w, y: minY + 0.00339 * h), controlPoint1:CGPoint(x:minX + 0.99439 * w, y: minY + 0.91826 * h), controlPoint2:CGPoint(x:minX + 0.99881 * w, y: minY + 0.01457 * h))
        
        return path2Path
    }
    
    func ovalPath(bounds: CGRect) -> UIBezierPath{
        let ovalPath = UIBezierPath(ovalIn:bounds)
        return ovalPath
    }
    
    
}



//import UIKit
//
//@IBDesignable
//class CustomView: UIView, CAAnimationDelegate {
//    
//    var updateLayerValueForCompletedAnimation : Bool = false
//    var completionBlocks : Dictionary<CAAnimation, (Bool) -> Void> = [:]
//    var layers : Dictionary<String, AnyObject> = [:]
//    
//    
//    
//    //MARK: - Life Cycle
//    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        setupProperties()
//        setupLayers()
//    }
//    
//    required init?(coder aDecoder: NSCoder)
//    {
//        super.init(coder: aDecoder)
//        setupProperties()
//        setupLayers()
//    }
//    
//    override var frame: CGRect{
//        didSet{
//            setupLayerFrames()
//        }
//    }
//    
//    override var bounds: CGRect{
//        didSet{
//            setupLayerFrames()
//        }
//    }
//    
//    func setupProperties(){
//        
//    }
//    
//    func setupLayers(){
//        self.backgroundColor = UIColor.clear
//        
//        let path = CAShapeLayer()
//        self.layer.addSublayer(path)
//        layers["path"] = path
//        
//        let path2 = CAShapeLayer()
//        self.layer.addSublayer(path2)
//        layers["path2"] = path2
//        
//        let oval = CAShapeLayer()
//        self.layer.addSublayer(oval)
//        layers["oval"] = oval
//        
//        resetLayerProperties(forLayerIdentifiers: nil)
//        setupLayerFrames()
//    }
//    
//    func resetLayerProperties(forLayerIdentifiers layerIds: [String]!){
//        CATransaction.begin()
//        CATransaction.setDisableActions(true)
//        
//        if layerIds == nil || layerIds.contains("path"){
//            let path = layers["path"] as! CAShapeLayer
//            path.lineCap       = kCALineCapRound
//            path.fillColor     = nil
//            path.strokeColor   = UIColor.white.cgColor
//            path.lineWidth     = 0.5
//            path.shadowColor   = UIColor.white.cgColor
//            path.shadowOpacity = 1
//            path.shadowOffset  = CGSize(width: 0, height: 0)
//            path.shadowRadius  = 2
//        }
//        if layerIds == nil || layerIds.contains("path2"){
//            let path2 = layers["path2"] as! CAShapeLayer
//            path2.lineCap         = kCALineCapRound
//            path2.miterLimit      = 0
//            path2.fillColor       = nil
//            path2.strokeColor     = UIColor.white.cgColor
//            path2.strokeStart     = 0.06
//            path2.lineDashPattern = [1, 7.5]
//            path2.lineDashPhase   = 6.5
//            path2.shadowColor     = UIColor.white.cgColor
//            path2.shadowOpacity = 1
//            path2.shadowOffset  = CGSize(width: 0, height: -0)
//            path2.shadowRadius  = 2
//        }
//        if layerIds == nil || layerIds.contains("oval"){
//            let oval = layers["oval"] as! CAShapeLayer
//            oval.fillColor     = UIColor(red:0.943, green: 1, blue:0.999, alpha:1).cgColor
//            oval.strokeColor   = UIColor(red:0.329, green: 0.329, blue:0.329, alpha:1).cgColor
//            oval.lineWidth     = 0
//            oval.shadowColor   = UIColor(red:0, green: 0, blue:0, alpha:0.333).cgColor
//            oval.shadowOpacity = 0.33
//            oval.shadowOffset  = CGSize(width: 4, height: 4)
//            oval.shadowRadius  = 5
//        }
//        
//        CATransaction.commit()
//    }
//    
//    func setupLayerFrames(){
//        CATransaction.begin()
//        CATransaction.setDisableActions(true)
//        
//        if let path : CAShapeLayer = layers["path"] as? CAShapeLayer{
//            path.frame = CGRect(x: 0.0018 * path.superlayer!.bounds.width, y: 0.0041 * path.superlayer!.bounds.height, width: 0.99711 * path.superlayer!.bounds.width, height: 0.99561 * path.superlayer!.bounds.height)
//            path.path  = pathPath(bounds: (layers["path"] as! CAShapeLayer).bounds).cgPath
//        }
//        
//        if let path2 : CAShapeLayer = layers["path2"] as? CAShapeLayer{
//            path2.frame = CGRect(x: 0.0018 * path2.superlayer!.bounds.width, y: 0.0041 * path2.superlayer!.bounds.height, width: 0.99711 * path2.superlayer!.bounds.width, height: 0.99561 * path2.superlayer!.bounds.height)
//            path2.path  = path2Path(bounds: (layers["path2"] as! CAShapeLayer).bounds).cgPath
//        }
//        
//        if let oval : CAShapeLayer = layers["oval"] as? CAShapeLayer{
//            oval.frame = CGRect(x: -0.01 * oval.superlayer!.bounds.width, y: 0.43 * oval.superlayer!.bounds.height, width: 0.02 * oval.superlayer!.bounds.width, height: 0.08 * oval.superlayer!.bounds.height)
//            oval.path  = ovalPath(bounds: (layers["oval"] as! CAShapeLayer).bounds).cgPath
//        }
//        
//        CATransaction.commit()
//    }
//    
//    //MARK: - Animation Setup
//    
//    func addUntitled1Animation(totalDuration: CFTimeInterval = 1.5, completionBlock: ((_ finished: Bool) -> Void)? = nil){
//        if completionBlock != nil{
//            let completionAnim = CABasicAnimation(keyPath:"completionAnim")
//            completionAnim.duration = totalDuration
//            completionAnim.delegate = self
//            completionAnim.setValue("Untitled1", forKey:"animId")
//            completionAnim.setValue(false, forKey:"needEndAnim")
//            layer.add(completionAnim, forKey:"Untitled1")
//            if let anim = layer.animation(forKey: "Untitled1"){
//                completionBlocks[anim] = completionBlock
//            }
//        }
//        
//        let fillMode : String = kCAFillModeForwards
//        
//        ////Path animation
//        let pathStrokeEndAnim            = CAKeyframeAnimation(keyPath:"strokeEnd")
//        pathStrokeEndAnim.values         = [0, 1]
//        pathStrokeEndAnim.keyTimes       = [0, 1]
//        pathStrokeEndAnim.duration       = 0.98 * totalDuration
//        pathStrokeEndAnim.beginTime      = 0.01 * totalDuration
//        pathStrokeEndAnim.timingFunction = CAMediaTimingFunction(name:kCAMediaTimingFunctionEaseIn)
//        
//        let pathStrokeStartAnim            = CAKeyframeAnimation(keyPath:"strokeStart")
//        pathStrokeStartAnim.values         = [0, 1]
//        pathStrokeStartAnim.keyTimes       = [0, 1]
//        pathStrokeStartAnim.duration       = 0.2 * totalDuration
//        pathStrokeStartAnim.beginTime      = 0.79 * totalDuration
//        pathStrokeStartAnim.timingFunction = CAMediaTimingFunction(name:kCAMediaTimingFunctionEaseIn)
//        
//        let pathUntitled1Anim : CAAnimationGroup = QCMethod.group(animations: [pathStrokeEndAnim, pathStrokeStartAnim], fillMode:fillMode)
//        layers["path"]?.add(pathUntitled1Anim, forKey:"pathUntitled1Anim")
//        
//        ////Path2 animation
//        let path2StrokeEndAnim            = CAKeyframeAnimation(keyPath:"strokeEnd")
//        path2StrokeEndAnim.values         = [0, 1]
//        path2StrokeEndAnim.keyTimes       = [0, 1]
//        path2StrokeEndAnim.duration       = 0.98 * totalDuration
//        path2StrokeEndAnim.beginTime      = 0.01 * totalDuration
//        path2StrokeEndAnim.timingFunction = CAMediaTimingFunction(name:kCAMediaTimingFunctionEaseIn)
//        
//        let path2StrokeStartAnim            = CAKeyframeAnimation(keyPath:"strokeStart")
//        path2StrokeStartAnim.values         = [0, 1]
//        path2StrokeStartAnim.keyTimes       = [0, 1]
//        path2StrokeStartAnim.duration       = 0.79 * totalDuration
//        path2StrokeStartAnim.beginTime      = 0.21 * totalDuration
//        path2StrokeStartAnim.timingFunction = CAMediaTimingFunction(name:kCAMediaTimingFunctionEaseIn)
//        
//        let path2OpacityAnim      = CAKeyframeAnimation(keyPath:"opacity")
//        path2OpacityAnim.values   = [0, 1, 1, 0]
//        path2OpacityAnim.keyTimes = [0, 0.21, 0.972, 1]
//        path2OpacityAnim.duration = 1 * totalDuration
//        
//        let path2Untitled1Anim : CAAnimationGroup = QCMethod.group(animations: [path2StrokeEndAnim, path2StrokeStartAnim, path2OpacityAnim], fillMode:fillMode)
//        layers["path2"]?.add(path2Untitled1Anim, forKey:"path2Untitled1Anim")
//        
//        let oval = layers["oval"] as! CAShapeLayer
//        
//        ////Oval animation
//        var pathRect1                    = layers["path"]?.bounds
//        pathRect1?.origin.x += (layers["oval"]?.position.x)! - 0.00000 * (pathRect1?.width)!
//        pathRect1?.origin.y += (layers["oval"]?.position.y)! - 0.46682 * (pathRect1?.height)!
//        let ovalPositionAnim             = CAKeyframeAnimation(keyPath:"position")
//        ovalPositionAnim.path            = pathPath(bounds: pathRect1!).cgPath
//        ovalPositionAnim.calculationMode = kCAAnimationPaced
//        ovalPositionAnim.duration        = 0.98 * totalDuration
//        ovalPositionAnim.beginTime       = 0.01 * totalDuration
//        ovalPositionAnim.timingFunction  = CAMediaTimingFunction(name:kCAMediaTimingFunctionEaseIn)
//        
//        let ovalOpacityAnim            = CAKeyframeAnimation(keyPath:"opacity")
//        ovalOpacityAnim.values         = [0, 1, 1, 0]
//        ovalOpacityAnim.keyTimes       = [0, 0.01, 0.99, 1]
//        ovalOpacityAnim.duration       = 1 * totalDuration
//        ovalOpacityAnim.timingFunction = CAMediaTimingFunction(name:kCAMediaTimingFunctionEaseIn)
//        
//        let ovalTransformAnim      = CAKeyframeAnimation(keyPath:"transform")
//        ovalTransformAnim.values   = [NSValue(caTransform3D: CATransform3DMakeScale(0.8, 0.8, 1)),
//                                      NSValue(caTransform3D: CATransform3DMakeScale(0.8, 0.8, 1)),
//                                      NSValue(caTransform3D: CATransform3DMakeScale(0.5, 0.5, 1)),
//                                      NSValue(caTransform3D: CATransform3DMakeScale(0.5, 0.5, 1)),
//                                      NSValue(caTransform3D: CATransform3DMakeScale(0.8, 0.8, 1))]
//        ovalTransformAnim.keyTimes = [0, 0.49, 0.255, 0.73, 1]
//        ovalTransformAnim.duration = 0.986 * totalDuration
//        
//        let ovalUntitled1Anim : CAAnimationGroup = QCMethod.group(animations: [ovalPositionAnim, ovalOpacityAnim, ovalTransformAnim], fillMode:fillMode)
//        oval.add(ovalUntitled1Anim, forKey:"ovalUntitled1Anim")
//    }
//    
//    //MARK: - Animation Cleanup
//    
//    func animationDidStop(_ anim: CAAnimation, finished flag: Bool){
//        if let completionBlock = completionBlocks[anim]{
//            completionBlocks.removeValue(forKey: anim)
//            if (flag && updateLayerValueForCompletedAnimation) || anim.value(forKey: "needEndAnim") as! Bool{
//                updateLayerValues(forAnimationId: anim.value(forKey: "animId") as! String)
//                removeAnimations(forAnimationId: anim.value(forKey: "animId") as! String)
//            }
//            completionBlock(flag)
//        }
//    }
//    
//    func updateLayerValues(forAnimationId identifier: String){
//        if identifier == "Untitled1"{
//            QCMethod.updateValueFromPresentationLayer(forAnimation: (layers["path"] as! CALayer).animation(forKey: "pathUntitled1Anim"), theLayer:(layers["path"] as! CALayer))
//            QCMethod.updateValueFromPresentationLayer(forAnimation: (layers["path2"] as! CALayer).animation(forKey: "path2Untitled1Anim"), theLayer:(layers["path2"] as! CALayer))
//            QCMethod.updateValueFromPresentationLayer(forAnimation: (layers["oval"] as! CALayer).animation(forKey: "ovalUntitled1Anim"), theLayer:(layers["oval"] as! CALayer))
//        }
//    }
//    
//    func removeAnimations(forAnimationId identifier: String){
//        if identifier == "Untitled1"{
//            (layers["path"] as! CALayer).removeAnimation(forKey: "pathUntitled1Anim")
//            (layers["path2"] as! CALayer).removeAnimation(forKey: "path2Untitled1Anim")
//            (layers["oval"] as! CALayer).removeAnimation(forKey: "ovalUntitled1Anim")
//        }
//    }
//    
//    func removeAllAnimations(){
//        for layer in layers.values{
//            (layer as! CALayer).removeAllAnimations()
//        }
//    }
//    
//    //MARK: - Bezier Path
//    
//    func pathPath(bounds: CGRect) -> UIBezierPath{
//        let pathPath = UIBezierPath()
//        let minX = CGFloat(bounds.minX), minY = bounds.minY, w = bounds.width, h = bounds.height;
//        
//        pathPath.move(to: CGPoint(x:minX, y: minY + 0.46682 * h))
//        pathPath.addLine(to: CGPoint(x:minX + 0.10648 * w, y: minY + 0.46562 * h))
//        pathPath.addLine(to: CGPoint(x:minX + 0.1139 * w, y: minY + 0.44539 * h))
//        pathPath.addLine(to: CGPoint(x:minX + 0.11955 * w, y: minY + 0.47068 * h))
//        pathPath.addLine(to: CGPoint(x:minX + 0.12932 * w, y: minY + 0.43475 * h))
//        pathPath.addLine(to: CGPoint(x:minX + 0.13396 * w, y: minY + 0.4952 * h))
//        pathPath.addCurve(to: CGPoint(x:minX + 0.14837 * w, y: minY + 0.30583 * h), controlPoint1:CGPoint(x:minX + 0.13396 * w, y: minY + 0.4952 * h), controlPoint2:CGPoint(x:minX + 0.14844 * w, y: minY + 0.30435 * h))
//        pathPath.addCurve(to: CGPoint(x:minX + 0.16133 * w, y: minY + 0.60682 * h), controlPoint1:CGPoint(x:minX + 0.14829 * w, y: minY + 0.30731 * h), controlPoint2:CGPoint(x:minX + 0.16133 * w, y: minY + 0.60682 * h))
//        pathPath.addLine(to: CGPoint(x:minX + 0.17236 * w, y: minY + 0.43402 * h))
//        pathPath.addLine(to: CGPoint(x:minX + 0.17949 * w, y: minY + 0.49622 * h))
//        pathPath.addLine(to: CGPoint(x:minX + 0.18608 * w, y: minY + 0.44588 * h))
//        pathPath.addLine(to: CGPoint(x:minX + 0.18977 * w, y: minY + 0.46902 * h))
//        pathPath.addLine(to: CGPoint(x:minX + 0.29753 * w, y: minY + 0.46848 * h))
//        pathPath.addCurve(to: CGPoint(x:minX + 0.31526 * w, y: minY + 0.40693 * h), controlPoint1:CGPoint(x:minX + 0.29753 * w, y: minY + 0.46848 * h), controlPoint2:CGPoint(x:minX + 0.31513 * w, y: minY + 0.40582 * h))
//        pathPath.addCurve(to: CGPoint(x:minX + 0.33167 * w, y: minY + 0.50824 * h), controlPoint1:CGPoint(x:minX + 0.3154 * w, y: minY + 0.40804 * h), controlPoint2:CGPoint(x:minX + 0.33088 * w, y: minY + 0.51016 * h))
//        pathPath.addCurve(to: CGPoint(x:minX + 0.36209 * w, y: minY + 0.35331 * h), controlPoint1:CGPoint(x:minX + 0.33246 * w, y: minY + 0.50633 * h), controlPoint2:CGPoint(x:minX + 0.36209 * w, y: minY + 0.35241 * h))
//        pathPath.addCurve(to: CGPoint(x:minX + 0.37978 * w, y: minY + 0.5839 * h), controlPoint1:CGPoint(x:minX + 0.36209 * w, y: minY + 0.35422 * h), controlPoint2:CGPoint(x:minX + 0.37978 * w, y: minY + 0.5839 * h))
//        pathPath.addLine(to: CGPoint(x:minX + 0.42086 * w, y: minY))
//        pathPath.addLine(to: CGPoint(x:minX + 0.45595 * w, y: minY + h))
//        pathPath.addLine(to: CGPoint(x:minX + 0.49291 * w, y: minY + 0.34372 * h))
//        pathPath.addLine(to: CGPoint(x:minX + 0.50915 * w, y: minY + 0.53992 * h))
//        pathPath.addLine(to: CGPoint(x:minX + 0.52674 * w, y: minY + 0.41134 * h))
//        pathPath.addLine(to: CGPoint(x:minX + 0.5463 * w, y: minY + 0.46595 * h))
//        pathPath.addLine(to: CGPoint(x:minX + 0.74798 * w, y: minY + 0.46799 * h))
//        pathPath.addLine(to: CGPoint(x:minX + 0.75403 * w, y: minY + 0.44881 * h))
//        pathPath.addLine(to: CGPoint(x:minX + 0.76036 * w, y: minY + 0.46412 * h))
//        pathPath.addLine(to: CGPoint(x:minX + 0.77133 * w, y: minY + 0.42675 * h))
//        pathPath.addLine(to: CGPoint(x:minX + 0.77631 * w, y: minY + 0.47698 * h))
//        pathPath.addCurve(to: CGPoint(x:minX + 0.78888 * w, y: minY + 0.31939 * h), controlPoint1:CGPoint(x:minX + 0.77631 * w, y: minY + 0.47698 * h), controlPoint2:CGPoint(x:minX + 0.78888 * w, y: minY + 0.31813 * h))
//        pathPath.addCurve(to: CGPoint(x:minX + 0.80171 * w, y: minY + 0.58591 * h), controlPoint1:CGPoint(x:minX + 0.78888 * w, y: minY + 0.32066 * h), controlPoint2:CGPoint(x:minX + 0.80171 * w, y: minY + 0.58591 * h))
//        pathPath.addLine(to: CGPoint(x:minX + 0.81349 * w, y: minY + 0.4333 * h))
//        pathPath.addLine(to: CGPoint(x:minX + 0.81799 * w, y: minY + 0.45871 * h))
//        pathPath.addLine(to: CGPoint(x:minX + 0.82376 * w, y: minY + 0.4423 * h))
//        pathPath.addLine(to: CGPoint(x:minX + 0.83441 * w, y: minY + 0.46425 * h))
//        pathPath.addCurve(to: CGPoint(x:minX + w, y: minY + 0.4677 * h), controlPoint1:CGPoint(x:minX + 0.83441 * w, y: minY + 0.46425 * h), controlPoint2:CGPoint(x:minX + 0.99962 * w, y: minY + 0.46802 * h))
//        
//        return pathPath
//    }
//    
//    func path2Path(bounds: CGRect) -> UIBezierPath{
//        let path2Path = UIBezierPath()
//        let minX = CGFloat(bounds.minX), minY = bounds.minY, w = bounds.width, h = bounds.height;
//        
//        path2Path.move(to: CGPoint(x:minX, y: minY + 0.46682 * h))
//        path2Path.addLine(to: CGPoint(x:minX + 0.10648 * w, y: minY + 0.46562 * h))
//        path2Path.addLine(to: CGPoint(x:minX + 0.1139 * w, y: minY + 0.44539 * h))
//        path2Path.addLine(to: CGPoint(x:minX + 0.11955 * w, y: minY + 0.47068 * h))
//        path2Path.addLine(to: CGPoint(x:minX + 0.12932 * w, y: minY + 0.43475 * h))
//        path2Path.addLine(to: CGPoint(x:minX + 0.13396 * w, y: minY + 0.4952 * h))
//        path2Path.addCurve(to: CGPoint(x:minX + 0.14837 * w, y: minY + 0.30583 * h), controlPoint1:CGPoint(x:minX + 0.13396 * w, y: minY + 0.4952 * h), controlPoint2:CGPoint(x:minX + 0.14844 * w, y: minY + 0.30435 * h))
//        path2Path.addCurve(to: CGPoint(x:minX + 0.16133 * w, y: minY + 0.60682 * h), controlPoint1:CGPoint(x:minX + 0.14829 * w, y: minY + 0.30731 * h), controlPoint2:CGPoint(x:minX + 0.16133 * w, y: minY + 0.60682 * h))
//        path2Path.addLine(to: CGPoint(x:minX + 0.17236 * w, y: minY + 0.43402 * h))
//        path2Path.addLine(to: CGPoint(x:minX + 0.17949 * w, y: minY + 0.49622 * h))
//        path2Path.addLine(to: CGPoint(x:minX + 0.18608 * w, y: minY + 0.44588 * h))
//        path2Path.addLine(to: CGPoint(x:minX + 0.18977 * w, y: minY + 0.46902 * h))
//        path2Path.addLine(to: CGPoint(x:minX + 0.29753 * w, y: minY + 0.46848 * h))
//        path2Path.addCurve(to: CGPoint(x:minX + 0.31526 * w, y: minY + 0.40693 * h), controlPoint1:CGPoint(x:minX + 0.29753 * w, y: minY + 0.46848 * h), controlPoint2:CGPoint(x:minX + 0.31513 * w, y: minY + 0.40582 * h))
//        path2Path.addCurve(to: CGPoint(x:minX + 0.33167 * w, y: minY + 0.50824 * h), controlPoint1:CGPoint(x:minX + 0.3154 * w, y: minY + 0.40804 * h), controlPoint2:CGPoint(x:minX + 0.33088 * w, y: minY + 0.51016 * h))
//        path2Path.addCurve(to: CGPoint(x:minX + 0.36209 * w, y: minY + 0.35331 * h), controlPoint1:CGPoint(x:minX + 0.33246 * w, y: minY + 0.50633 * h), controlPoint2:CGPoint(x:minX + 0.36209 * w, y: minY + 0.35241 * h))
//        path2Path.addCurve(to: CGPoint(x:minX + 0.37978 * w, y: minY + 0.5839 * h), controlPoint1:CGPoint(x:minX + 0.36209 * w, y: minY + 0.35422 * h), controlPoint2:CGPoint(x:minX + 0.37978 * w, y: minY + 0.5839 * h))
//        path2Path.addLine(to: CGPoint(x:minX + 0.42086 * w, y: minY))
//        path2Path.addLine(to: CGPoint(x:minX + 0.45595 * w, y: minY + h))
//        path2Path.addLine(to: CGPoint(x:minX + 0.49291 * w, y: minY + 0.34372 * h))
//        path2Path.addLine(to: CGPoint(x:minX + 0.50915 * w, y: minY + 0.53992 * h))
//        path2Path.addLine(to: CGPoint(x:minX + 0.52674 * w, y: minY + 0.41134 * h))
//        path2Path.addLine(to: CGPoint(x:minX + 0.5463 * w, y: minY + 0.46595 * h))
//        path2Path.addLine(to: CGPoint(x:minX + 0.74798 * w, y: minY + 0.46799 * h))
//        path2Path.addLine(to: CGPoint(x:minX + 0.75403 * w, y: minY + 0.44881 * h))
//        path2Path.addLine(to: CGPoint(x:minX + 0.76036 * w, y: minY + 0.46412 * h))
//        path2Path.addLine(to: CGPoint(x:minX + 0.77133 * w, y: minY + 0.42675 * h))
//        path2Path.addLine(to: CGPoint(x:minX + 0.77631 * w, y: minY + 0.47698 * h))
//        path2Path.addCurve(to: CGPoint(x:minX + 0.78888 * w, y: minY + 0.31939 * h), controlPoint1:CGPoint(x:minX + 0.77631 * w, y: minY + 0.47698 * h), controlPoint2:CGPoint(x:minX + 0.78888 * w, y: minY + 0.31813 * h))
//        path2Path.addCurve(to: CGPoint(x:minX + 0.80171 * w, y: minY + 0.58591 * h), controlPoint1:CGPoint(x:minX + 0.78888 * w, y: minY + 0.32066 * h), controlPoint2:CGPoint(x:minX + 0.80171 * w, y: minY + 0.58591 * h))
//        path2Path.addLine(to: CGPoint(x:minX + 0.81349 * w, y: minY + 0.4333 * h))
//        path2Path.addLine(to: CGPoint(x:minX + 0.81799 * w, y: minY + 0.45871 * h))
//        path2Path.addLine(to: CGPoint(x:minX + 0.82376 * w, y: minY + 0.4423 * h))
//        path2Path.addLine(to: CGPoint(x:minX + 0.83441 * w, y: minY + 0.46425 * h))
//        path2Path.addCurve(to: CGPoint(x:minX + w, y: minY + 0.4677 * h), controlPoint1:CGPoint(x:minX + 0.83441 * w, y: minY + 0.46425 * h), controlPoint2:CGPoint(x:minX + 0.99962 * w, y: minY + 0.46802 * h))
//        
//        return path2Path
//    }
//    
//    func ovalPath(bounds: CGRect) -> UIBezierPath{
//        let ovalPath = UIBezierPath(ovalIn:bounds)
//        return ovalPath
//    }
//    
//    
//}
