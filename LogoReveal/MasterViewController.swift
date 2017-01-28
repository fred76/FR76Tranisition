


import UIKit
import QuartzCore

func delay(seconds: Double, completion: @escaping ()-> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + seconds, execute: completion)
}

class MasterViewController: UIViewController {
    
   // @IBOutlet weak var vi: RWLogoLayer!
    
    @IBOutlet weak var anim: CustomView!
    let transition = RevealAnimator()
    
 
    
    override func viewDidLoad() {super.viewDidLoad()
    
   
    }
    
    @IBAction func bbb(_ sender: Any) {
        print("Master Press")
    }
    
   
    
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(animated)
        navigationController?.delegate = self
        let tap = UITapGestureRecognizer(target: self, action: #selector(didTap))
        view.addGestureRecognizer(tap)
    }
    
    func didTap() {
    
        anim.addUntitled1Animation(completionBlock: {_ in
            self.anim.setupLayers()
       self.anim.resetLayerProperties(forLayerIdentifiers: ["oval", "path"])
        self.performSegue(withIdentifier: "details", sender: nil)
        
        })
        
    }
    
    var p = RWLogoLayer()
}



extension MasterViewController: UINavigationControllerDelegate {
    func navigationController(_ navigationController: UINavigationController, animationControllerFor operation: UINavigationControllerOperation, from fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.operation = operation
 
        return transition
    }
}
