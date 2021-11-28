//
//  AirTagViewController.swift
//  Apple Store
//
//  Created by Hong Cheng Yen on 2021/11/26.
//

import UIKit

class AirTagViewController: UIViewController {

    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var TextField: UITextField!
    @IBOutlet weak var ClearButton: UIButton!
    @IBOutlet weak var exclamationmarkButton: UIButton!
    var Labelt: String?
    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Label.text = Labelt
        TextField.text = Labelt
        
//        print(Labelt)
        switch Label.text?.count ?? 0 {
        case 0:
            Label.font = Label.font.withSize(60)
        case 1:
            Label.font = Label.font.withSize(60)
        case 2:
            Label.font = Label.font.withSize(50)
        case 3:
            Label.font = Label.font.withSize(40)
        case 4:
            Label.font = Label.font.withSize(30)
        default:
            break
        }
        
        
        //禁止下拉
        self.isModalInPresentation = true
//        presentationController?.presentedView?.gestureRecognizers?.first?.isEnabled = false
        
        TextField.self.layer.borderWidth = 1
        TextField.self.layer.borderColor = CGColor(red: 151/255, green: 150/255, blue: 155/255, alpha: 1)
        TextField.self.layer.cornerRadius = 5

        // Do any additional setup after loading the view.
    }
    
    

    @IBAction func clear(_ sender: Any) {
        print("cancel")
        Label.text = ""
        TextField.text = ""
        ClearButton.isHidden = true
        exclamationmarkButton.isHidden = true

        
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
//        Label.text = TextField.text!
//        Label.font = Label.font.withSize(15)
        self.view.endEditing(true)
    }

    
    
    @IBAction func test(_ sender: Any) {
//        Label.text = TextField.text!
        switch TextField.text?.count ?? 0 {
        case 0:
            Label.font = Label.font.withSize(60)
            ClearButton.isHidden = true
            exclamationmarkButton.isHidden = true
            Label.text = TextField.text!
        case 1:
            Label.font = Label.font.withSize(60)
            ClearButton.isHidden = false
            exclamationmarkButton.isHidden = true

            Label.text = TextField.text!
        case 2:
            Label.font = Label.font.withSize(50)
            ClearButton.isHidden = false
            exclamationmarkButton.isHidden = true

            Label.text = TextField.text!

        case 3:
            Label.font = Label.font.withSize(40)
            ClearButton.isHidden = false
            exclamationmarkButton.isHidden = true

            Label.text = TextField.text!

        case 4:
            Label.font = Label.font.withSize(30)
            ClearButton.isHidden = false
            exclamationmarkButton.isHidden = true

            Label.text = TextField.text!
        case 5:
            //限制出現一次視窗
            if TextField.text?.count ?? 0 == 5, exclamationmarkButton.isHidden == true {
                let alertcontroller = UIAlertController(title: "錯誤", message: "你的訊息長度超出可用空間。", preferredStyle: .alert)
                alertcontroller.addAction(UIAlertAction(title: "好", style: .default, handler: nil))
                present(alertcontroller, animated: true, completion: nil)
            }
            ClearButton.isHidden = false
            exclamationmarkButton.isHidden = false
            
            
            
            

        default:
            Label.isEnabled = true
            exclamationmarkButton.isHidden = false
        }
        
    }
    @IBAction func Exclamationmark(_ sender: Any) {
        let alertcontroller = UIAlertController(title: "錯誤", message: "你的訊息長度超出可用空間。", preferredStyle: .alert)
        alertcontroller.addAction(UIAlertAction(title: "好", style: .default, handler: nil))
        present(alertcontroller, animated: true, completion: nil)
        
    }
    
    
    

    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        Labelt = Label.text
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

    
    
    
    

}
