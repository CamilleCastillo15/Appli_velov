//
//  TableViewController.swift
//  Table
//
//  Created by Camille Castillo on 19/01/2016.
//  Copyright © 2016 Camille Castillo. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    // Création d'une variable qui est un tableau d'objets JSON
    var post:JSON = []
    
    // Puis d'une constante qui représente une clé d'API
    // Cela permettra d'accèder aux donner que l'API renvoyera et de les utiliser
    let apiKey  = "b69a1a1a47a0164e66f35b5869c3bfaf28b70781"
    
    // La ville d'où les données vont être extraites
    let contractName = "Lyon"
    
    // On redéfinit la fonction viewDidLoad
    override func viewDidLoad() {
        // On appelle le constructeur initial de cette fonction
        super.viewDidLoad()
        
        // l'URL qu'on va interroger, où le nom de la ville qu'on a définit plus haut est renseigné
        let urlString = "https://api.jcdecaux.com/vls/v1/stations?contract=\(contractName)&apiKey=\(apiKey)"
        
        // La classe NSURLSession est une classe permettant de  charger des données par le protocole HTTP
        // La méthode sharedSession() retourne un objet session
        // La constante session dure un certain temps
        let session = NSURLSession.sharedSession()
        
        // Création d'une constante stationsUrl qui représente une Url et prend en contenu notre constante urlString
        let stationsUrl = NSURL(string: urlString)
        
        // La constante task permet de récupérer les données de l'URL requêté, à partir de la session crée
        // Les données sont encapsulées dans des variables data, response, error
        let task = session.dataTaskWithURL(stationsUrl!, completionHandler: {(data, response, error) in
            
            //guard permet de créer une constante si date existe
            //Sinon une erreur sera affichée à l'écran
            guard let responseData = data else {
                print("Erreur : Aucune donnée recue")
                return
            }
            
            
            //Si error n'est pas nulle
            if error != nil
            {
                //Une string est affiché avec la localisation de l'erreur
                print(error!.localizedDescription)
            }
              
            //Si error est vide
            else {
                
                // Cela permet de récupérer les données avec une requête post, les data reçues sont renommées responseDData
                self.post = JSON(data: responseData)
                
                // Si les données reçues correspondent à un tableau, et que la première ligne équivaut
                //
                if let postTitle = self.post[0]["name"].string{
                    print(postTitle)
                    
                }
                
                dispatch_async(dispatch_get_main_queue()) {
                    self.tableView.reloadData();
                }
                
            }
            
        })
        
        task.resume()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
    
        return post.count
    
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as! TableViewCell
        let row:Int = indexPath.row
        
        cell.Label1!.text = post[row]["name"].string
        //cell.Label2!.text = DescriptionsArray[row]
        
        //cell.ImageView!.image = UIImage(named: LinkArray[row])
        
        return cell
        
        // Configure the cell...

    }
    

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
      
        if segue.identifier == "showDetails" {
            
           let detailView = segue.destinationViewController as! ViewControllerDetails
            
            let indexPath: NSIndexPath = tableView.indexPathForSelectedRow!
            
            let row:Int = indexPath.row
            
           detailView.detailInfos = [post[row]["name"].string!,post[row]["address"].string!,post[row]["status"].string!]
            
            
        }
        
        
    }
    

}
