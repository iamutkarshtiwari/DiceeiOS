import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstDiceImageView: UIImageView!
    @IBOutlet weak var secondDiceImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

                
    }
    
    @IBAction func firstDiceTapped(_ sender: UIButton) {
        let diceLiterals = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]
        
        firstDiceImageView.image = UIImage(imageLiteralResourceName: diceLiterals[generateRandomIndex()])
        
        secondDiceImageView.image = UIImage(imageLiteralResourceName: diceLiterals[generateRandomIndex()])
        
    }
    
    private func generateRandomIndex() -> Int {
        return Int.random(in: 1...6) - 1
    }
}

