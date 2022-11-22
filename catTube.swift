import UIKit
import WebKit

class catTube: UIViewController {
    
    
    @IBOutlet weak var CView: UIView!
    
    
    @IBOutlet weak var goCU: UIButton!
    
    var CButtonClosure: (()->Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CView.layer.cornerRadius = 30
        goCU.layer.cornerRadius = 10
        
    }
    
    @IBAction func Xbutton(_ sender: Any) {
        
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        
        let homePopUp = self.storyboard?.instantiateViewController(withIdentifier: "goMain")
        homePopUp?.modalPresentationStyle = .overCurrentContext
        homePopUp?.modalTransitionStyle = .crossDissolve
        self.present(homePopUp!, animated: true, completion: nil)
    }
    
    
    @IBAction func ClickgoCU(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
        if let CButtonClosure = CButtonClosure {
            
            CButtonClosure()
            
        }
        
    }
    
}
