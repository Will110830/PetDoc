import UIKit

class dogTube: UIViewController {
    
    
    @IBOutlet weak var DView: UIView!
    
    @IBOutlet weak var goDU: UIButton!
    
    var DButtonClosure: (()->Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DView.layer.cornerRadius = 30
        goDU.layer.cornerRadius = 10
        
    }
    
    @IBAction func Xbutton(_ sender: Any) {
        
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        
        let homePopUp = self.storyboard?.instantiateViewController(withIdentifier: "goMain")
        homePopUp?.modalPresentationStyle = .overCurrentContext
        homePopUp?.modalTransitionStyle = .crossDissolve
        self.present(homePopUp!, animated: true, completion: nil)
    }
    
    
    @IBAction func ClickgoDU(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
        if let DButtonClosure = DButtonClosure {
            
            DButtonClosure()
            
        }
        
    }
    
    
}
