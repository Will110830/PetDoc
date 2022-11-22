import UIKit
import YPImagePicker

class Profile_View: UIViewController {
    
    @IBOutlet weak var BackImage: UIImageView!
    
    @IBOutlet weak var BackButton: UIButton!
    
    @IBOutlet weak var ProfileImage: UIImageView!
    
    @IBOutlet weak var ProfileButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ProfileImage.layer.masksToBounds = true
        
        self.ProfileImage.layer.cornerRadius = ProfileImage.frame.height / 2
        
        self.BackButton.addTarget(self, action: #selector(onBackButton), for: .touchUpInside)
        self.ProfileButton.addTarget(self, action: #selector(onProfileButton), for: .touchUpInside)
    }
    //배사
    @objc fileprivate func  onBackButton() {
        
        var config = YPImagePickerConfiguration()
        config.screens = [.library]

        let picker = YPImagePicker(configuration: config)
        
        picker.didFinishPicking { [unowned picker] items, _ in
            if let photo = items.singlePhoto {
                print(photo.fromCamera) // Image source (camera or library)
                print(photo.image) // Final image selected by the user
                print(photo.originalImage) // original image selected by the user, unfiltered
                print(photo.modifiedImage) // Transformed image, can be nil
                print(photo.exifMeta) // Print exif meta data of original image.
                
                self.BackImage.image = photo.image
            }
            
            picker.dismiss(animated: true, completion: nil)
        }
        present(picker, animated: true, completion: nil)
    }
    //프사
    @objc fileprivate func  onProfileButton() {
        
        var config = YPImagePickerConfiguration()
        config.screens = [.library]

        let picker = YPImagePicker(configuration: config)
        
        picker.didFinishPicking { [unowned picker] items, _ in
            if let photo = items.singlePhoto {
                print(photo.fromCamera) // Image source (camera or library)
                print(photo.image) // Final image selected by the user
                print(photo.originalImage) // original image selected by the user, unfiltered
                print(photo.modifiedImage) // Transformed image, can be nil
                print(photo.exifMeta) // Print exif meta data of original image.
                
                self.ProfileImage.image = photo.image
            }
            
            picker.dismiss(animated: true, completion: nil)
        }
        present(picker, animated: true, completion: nil)
    }
}
