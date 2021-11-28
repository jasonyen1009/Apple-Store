//
//  AirTagTableViewController.swift
//  Apple Store
//
//  Created by Hong Cheng Yen on 2021/11/26.
//

import UIKit

class AirTagTableViewController: UITableViewController {
    @IBOutlet weak var Button: UIButton!
    @IBOutlet weak var ClearButton: UIButton!
    @IBOutlet weak var EditButton: UIButton!
    @IBOutlet weak var Label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ClearButton.isHidden = true
        EditButton.isHidden = true
        Button.isHidden = false
        
        Button.self.layer.borderColor = CGColor(red: 169/255, green: 169/255, blue: 173/255, alpha: 1)
        Button.self.layer.borderWidth = 1
        Button.self.layer.cornerRadius = 5
        
        ClearButton.self.layer.borderColor = CGColor(red: 169/255, green: 169/255, blue: 173/255, alpha: 1)
        ClearButton.self.layer.borderWidth = 1
        ClearButton.self.layer.cornerRadius = 5
        
        EditButton.self.layer.borderColor = CGColor(red: 169/255, green: 169/255, blue: 173/255, alpha: 1)
        EditButton.self.layer.borderWidth = 1
        EditButton.self.layer.cornerRadius = 5

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    @IBAction func unwindToCancel(_ unwindSegue: UIStoryboardSegue) {
//        let sourceViewController = unwindSegue.source
        // Use data from the view controller which initiated the unwind segue
    }
    
    
    @IBAction func unwindToData(_ unwindSegue: UIStoryboardSegue) {
        if let sourceViewController = unwindSegue.source as? AirTagViewController ,
           let data = sourceViewController.Labelt {
            Label.text = data
            
            
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
            ClearButton.isHidden = false
            EditButton.isHidden = false
            Button.isHidden = true
            if data == "" {
                ClearButton.isHidden = true
                EditButton.isHidden = true
                Button.isHidden = false
            }

        }
        
        // Use data from the view controller which initiated the unwind segue
    }
    


    
    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 0
//    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    @IBAction func clear(_ sender: Any) {
        Label.text = ""
        ClearButton.isHidden = true
        EditButton.isHidden = true
        Button.isHidden = false
        
        
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "segueShowNavigation01" {
            if let destVC = segue.destination as? UINavigationController,
               let targetController = destVC.topViewController as? AirTagViewController {
                    targetController.Labelt = Label.text ?? ""
                }
        }
        if segue.identifier == "segueShowNavigation02" {
            if let destVC = segue.destination as? UINavigationController,
               let targetController = destVC.topViewController as? AirTagViewController {
                    targetController.Labelt = Label.text ?? ""
                }
        }
        
    }

    

}
