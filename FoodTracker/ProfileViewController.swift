//
//  ProfileViewController.swift
//  FoodTracker
//
//  Created by coder on 12/9/20.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var imgProfile: UIImageView!
    @IBOutlet weak var noPostTile: UILabel!
    @IBOutlet weak var createPostBtn: UIButton!
    @IBOutlet weak var tableViewList: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var urlImage = URL(string: "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260")
        do {
            var imageData = try Data(contentsOf: urlImage!)
            imgProfile.image = UIImage(data: imageData)
        } catch {
            print("Data errors")
        }
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
