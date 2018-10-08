//
//  ViewController.swift
//  Table View 3
//
//  Created by Eddi Raimondi on 04/10/2018.
//  Copyright © 2018 Eddi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var books = ["Game of Thrones", "Swift for Dummies", "iOS XCode", "Android is Better"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

// Estensione dei protocolli
extension ViewController : UITableViewDataSource, UITableViewDelegate {
    
    // Crea una cella per ogni elemento dell'array books
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    
    // Scrive gli elementi dell'array uno per cella
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)    // costante cell che riutilizza sempre la stessa cella in base all'identifier
        cell.textLabel?.text = books[indexPath.row]     // scrive il testo della riga corrente dell'array nella cella
        return cell                                     // ritorna la cella
    }
}
