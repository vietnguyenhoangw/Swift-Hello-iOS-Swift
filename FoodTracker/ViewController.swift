//
//  ViewController.swift
//  FoodTracker
//
//  Created by coder on 12/8/20.
//

import UIKit

class ViewController: UIViewController {

    var userName: String = "";
    @IBOutlet weak var tfUserName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("MAIN VIEW DID LOAD")
        // Do any additional setup after loading the view.
    }
    
    // Prev Appear
    override func viewWillAppear(_ animated: Bool) {
        print("MAIN PRE APPEAR - viewWillAppear")
    }
    
    // Appear
    override func viewDidAppear(_ animated: Bool) {
        print("MAIN APPEAR - viewDidAppear")
    }
    
    // DisAppear
    override func viewDidDisappear(_ animated: Bool) {
        print("MAIN DISAPPEAR - viewDidDisappear")
    }

    @IBAction func GOTO_BLUE_TOP_BTN(_ sender: Any) {
//        self.navigateToBlue()
        userName = tfUserName.text ?? ""
        self.navigateToBlue(name: userName)
    }
    
    
    @IBAction func GOTO_BLUE_BTN(_ sender: UIButton) {
        self.navigateToBlue(name: "")
    }
    
    func navigateToBlue (name:String) {
        // create a story broad
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        
        // create new screen
        guard let blueScreen = storyBoard.instantiateViewController(withIdentifier: "BlueScreen") as? BlueScreenViewController else { return print("false") }
        blueScreen.userName = name
        
        // navigation to screen (push, pop)
        self.navigationController?.pushViewController(blueScreen, animated: true)
    }
}

