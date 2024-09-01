import UIKit

class ViewController: UIViewController {

    var countNumber: Int = 0
    @IBOutlet var countLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func plus(){
        countNumber += 1
        judge()
        countLabel.text = String(countNumber)
    }

    @IBAction func minus() {
        countNumber -= 1
        judge()
        countLabel.text = String(countNumber)
    }
    func judge(){
        if(countNumber >= 5){
            countLabel.textColor = UIColor.red
        }else if(countNumber >= 10){
            countLabel.textColor = UIColor.green
        }else if(countNumber >= 15){
            countLabel.textColor = UIColor.blue
        }
    }
}

