//
//  ViewController.swift
//  tabela-dinamica-refeicoes
//
//  Created by Greice Felipe on 29/11/21.
//

import UIKit

class ViewController: UITableViewController {
    
    let refeicoes = ["Churros", "Macarrão", "Pizza"]

    override func viewDidLoad() {
        super.viewDidLoad()
        print("TableViewController foi carregado")
    }
    
    // A função diz ao Table View quantas linhas nossa tabela deve ter.
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return refeicoes.count
    }
    
    // A função diz ao Table View o conteudo da linha da nossa tabela
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        let refeicao = refeicoes[indexPath.row]
        celula.textLabel?.text = refeicao
        
        return celula
    }

}

