//
//  BlueScreenController.swift
//  FoodTracker
//
//  Created by coder on 12/8/20.
//

import UIKit

class BlueScreenViewController: UIViewController {

    var userName:String = "";
    @IBOutlet weak var txtName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("BLUE SCREEN VIEW DID LOAD")
        // Do any additional setup after loading the view.
        txtName.text = userName
    }
    
    // Prev Appear
    override func viewWillAppear(_ animated: Bool) {
        print("BLUE SCREEN PRE APPEAR - viewWillAppear")
    }
    
    // Appear
    override func viewDidAppear(_ animated: Bool) {
        print("BLUE SCREEN APPEAR - viewDidAppear")
    }
    
    // DisAppear
    override func viewDidDisappear(_ animated: Bool) {
        print("BLUE SCREEN DISAPPEAR - viewDidDisappear")
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
