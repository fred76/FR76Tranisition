
import UIKit

class DetailViewController: UIViewController {
    
//    @IBOutlet weak var vi: RWLogoLayer!
    
    @IBOutlet weak var anim2: CustomView!
  
    
    let transition = RevealAnimator()
    
    override func viewDidLoad() {super.viewDidLoad()}
    
    @IBAction func iiii(_ sender: Any) {
        print("Detail Press")
        anim2.addUntitled1Animation(completionBlock: {_ in
            self.anim2.setupLayers()
            self.anim2.resetLayerProperties(forLayerIdentifiers: ["oval", "path"])
            _ = self.navigationController?.popViewController(animated: true)
            
        })
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
//        vi.setup(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: 100))
        
    }
     
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        navigationController?.delegate = self
    }
 
    
}

extension DetailViewController: UINavigationControllerDelegate {
    func navigationController(_ navigationController: UINavigationController, animationControllerFor operation: UINavigationControllerOperation, from fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.operation = operation
        return transition
    }
}
