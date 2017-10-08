//
//  ViewController.swift
//  Self-sizing-ImageCell
//
//  Created by Atthachai Meethong on 10/8/17.
//  Copyright © 2017 Atthachai Meethong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let images = [#imageLiteral(resourceName: "swimming"), #imageLiteral(resourceName: "mountain"), #imageLiteral(resourceName: "girl"), #imageLiteral(resourceName: "skateboard"), #imageLiteral(resourceName: "swimming"), #imageLiteral(resourceName: "mountain"), #imageLiteral(resourceName: "girl"), #imageLiteral(resourceName: "skateboard")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ImageCell", for: indexPath) as! ImageCell
        cell.setImage(images[indexPath.row])
        return cell
    }
}
