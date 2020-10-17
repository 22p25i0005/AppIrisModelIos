//
//  ViewController.swift
//  Api_Iris
//
//  Created by Nisit Sirimarnkit on 16/10/2563 BE.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var sepal_length: UITextField!

    @IBOutlet weak var sepal_width: UITextField!

    @IBOutlet weak var petal_length: UITextField!

    @IBOutlet weak var petal_width: UITextField!



    @IBAction func click_button(_ sender: Any) {

        let sl = sepal_length.text
        let sw = sepal_width.text
        let pl = petal_length.text
        let pw = petal_width.text

        let parameters: [String: String] = [
            "param": "\(sl!),\(sw!),\(pl!),\(pw!)"
        ]

        let urlString = "https://frozen-garden-55839.herokuapp.com/iris"
        AF.request(urlString,method: .post,parameters: parameters, encoding: URLEncoding.default)
            .responseString { response in
                if response.value != nil {
                    let storyboard = UIStoryboard(name: "Main", bundle: nil)
                    let vc = storyboard.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
                    vc.modalPresentationStyle = .fullScreen
                    vc.result = response.value
                    self.present(vc, animated: true)
                }
            }

    }

    override func viewDidLoad() {
        super.viewDidLoad()



    }


}

