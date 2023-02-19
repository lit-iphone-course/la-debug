import UIKit

class ResultViewController: UIViewController {

    var namber: Int!
    
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var characterImageView: UIImageView!
    
override func viewDidLoad() {
super.viewDidLoad()

namber = Int.random(in: 0...9)

if namber == 9 {
characterImageView.image = UIImage(named: "IoTMesh")
backgroundImageView.image = UIImage(named: "bgBlue")
} else if namber >= 7 {
characterImageView.image = UIImage(named: "camera")
backgroundImageView.image = UIImage(named: "bgGreen")
} else {
characterImageView.image = UIImage(named: "iphone")
backgroundImageView.image = UIImage(named: "bgRed")
}
}
    
    @IBAction func redraw() {
        namber = Int.random(in: 0...9)
        
        if namber == 9 {
            characterImageView.image = UIImage(named: "IoTMesh")
            backgroundImageView.image = UIImage(named: "bgBlue")
        } else if namber >= 7 {
            characterImageView.image = UIImage(named: "camera")
            backgroundImageView.image = UIImage(named: "bgGreen")
        } else {
            characterImageView.image = UIImage(named: "iphone")
            backgroundImageView.image = UIImage(named: "bgRed")
        }
        
    }
    
    @IBAction func back() {
        self.dismiss(animated: true)
    }


}
