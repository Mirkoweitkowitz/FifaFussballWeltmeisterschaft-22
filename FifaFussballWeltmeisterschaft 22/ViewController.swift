//
//  ViewController.swift
//  FifaFussballWeltmeisterschaft 22
//
//  Created by Mirko Weitkowitz on 30.08.22.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var wmListe: UITableView!
    
//    Qualifizierte Teams übergeben
    
//    var qualifiedTeams = ["Qatar", "Ecuador", "Senegal", "Netherlands", "England", "Iran", "USA", "Wales", "Argentina", "Saudi Arabia", "Mexico", "Poland", "France", "Australia", "Denmark", "Tunisia", "Spain", "Costa Rica", "Germany", "Japan", "Belgium", "Canada", "Morocco", "Croatia", "Brazil", "Serbia", "Switzerland", "Cameroon", "Portugal", "Ghana", "Uruguay", "South Korea"]
    
    
let groups = [
    ["Qatar", "Ecuador", "Senegal", "Netherlands"],
    ["England", "Iran", "USA", "Wales"],
    ["Argentina", "Saudi Arabia", "Mexico", "Poland"],
    ["France", "Australia", "Denmark", "Tunisia"],
    ["Spain", "Costa Rica", "Germany", "Japan"],
    ["Belgium", "Canada", "Morocco", "Croatia"],
    ["Brazil", "Serbia", "Switzerland", "Cameroon"],
    ["Portugal", "Ghana", "Uruguay", "South Korea"],
]
    
    let groupName = ["A","B","C","D","E","F","G","H"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        DataSource Übergeben
        wmListe.dataSource = self
        
    }

}

//MARK: Extension_ DataSource
//TODO: 1. Protokol einfügen

extension ViewController: UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return groups.count
    }

    
//    TODO: 2. Essentielle Funktion einfügen
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups[0].count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //         Cell registrieren
                let cell = wmListe.dequeueReusableCell(withIdentifier: "WMCell", for: indexPath)
        
        //         Inhalte / Eigenschaften der Cell anpassen
                var content = cell.defaultContentConfiguration()
        content.text = groups[indexPath.section][indexPath.row]
        content.image = UIImage(named: groups[indexPath.section][indexPath.row])
                cell.contentConfiguration = content
                
                return cell
            }
    
}

