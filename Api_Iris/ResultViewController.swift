//
//  ResultViewController.swift
//  Api_Iris
//
//  Created by Nisit Sirimarnkit on 16/10/2563 BE.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!

    @IBOutlet weak var resultLabel: UILabel!

    @IBAction func clickButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    var result: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        if result != nil {

            self.resultLabel.text = result

            switch result {
            case "Sentosa":
                self.imageView.image = UIImage(named: "iris_sentosa")
            case "Vassicolour":
                self.imageView.image = UIImage(named: "iris_versicolor")
            case "Virginica":
                self.imageView.image = UIImage(named: "iris_verginica")
            default:
                print("")
            }
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
