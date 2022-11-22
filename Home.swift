import UIKit
import WebKit

class Home: UIViewController {
    
    @IBOutlet weak var Su: UIImageView!
    
    @IBOutlet weak var Uweb: WKWebView!
    
    @IBOutlet weak var catDoc: UIButton!
    @IBOutlet weak var dogDoc: UIButton!
    @IBOutlet weak var hos: UIButton!
    
    @IBOutlet weak var Xb: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.Xb.layer.isHidden = true
    }
    
    @IBAction func ClickDog(_ sender: Any) {
        
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        
        let dogPopUp = self.storyboard?.instantiateViewController(withIdentifier: "dogPoP") as! dogTube
        dogPopUp.modalPresentationStyle = .overCurrentContext
        dogPopUp.modalTransitionStyle = .crossDissolve
        
        dogPopUp.DButtonClosure = {
            print("실행확인용")
            
            let DogUrl = URL(string: "https://www.youtube.com/channel/UCX3QAQPW30ZPpj39LJjJ_3g")
            
            self.catDoc.layer.isHidden = true
            self.dogDoc.layer.isHidden = true
            self.hos.layer.isHidden = true
            self.Su.layer.isHidden = true
            self.Xb.layer.isHidden = false
            
            self.Uweb.load(URLRequest(url: DogUrl!))
        }
        
        self.present(dogPopUp, animated: true, completion: nil)
        
    }
    
    @IBAction func ClickCat(_ sender: Any) {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        
        let catPopUp = self.storyboard?.instantiateViewController(withIdentifier: "catPoP") as! catTube
        
        catPopUp.modalPresentationStyle = .overCurrentContext
        catPopUp.modalTransitionStyle = .crossDissolve
        
        catPopUp.CButtonClosure = {
            print("실행확인용")
            
            let CatUrl = URL(string: "https://www.youtube.com/channel/UC69l_rtlCQ7M4Mz2RCS80BA")
            
            self.catDoc.layer.isHidden = true
            self.dogDoc.layer.isHidden = true
            self.hos.layer.isHidden = true
            self.Su.layer.isHidden = true
            self.Xb.layer.isHidden = false
            
            self.Uweb.load(URLRequest(url: CatUrl!))
            
            
        }
        
        self.present(catPopUp, animated: true, completion: nil)
        
        }
    
    
    @IBAction func ClickHos(_ sender: Any) {
        
        let HosUrl = URL(string: "https://www.kvma.or.kr/find_shap")
        
        self.catDoc.layer.isHidden = true
        self.dogDoc.layer.isHidden = true
        self.hos.layer.isHidden = true
        self.Su.layer.isHidden = true
        self.Xb.layer.isHidden = false
        
        self.Uweb.load(URLRequest(url: HosUrl!))
        
        }
    
    
    @IBAction func ClickXb(_ sender: Any) {
        
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        
        let homePopUp = self.storyboard?.instantiateViewController(withIdentifier: "goMain")
        homePopUp?.modalPresentationStyle = .overCurrentContext
        homePopUp?.modalTransitionStyle = .crossDissolve
        self.present(homePopUp!, animated: true, completion: nil)
    }
    

    
    }
