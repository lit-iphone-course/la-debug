import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    var number: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func plus(){
        number += 1
        updateColor()
        label.text = String(number)
    }

    @IBAction func minus() {
        number -= 1
        updateColor()
        label.text = String(number)
    }
    
    func updateColor(){
        number += 1
        if number >= 5 {
            label.textColor = .red
        } else if number >= 10 {
            label.textColor = .green
        } else if number >= 15 {
            label.textColor = .blue
        }
    }
}
