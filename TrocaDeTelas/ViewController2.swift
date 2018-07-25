//
//  ViewController2.swift
//  TrocaDeTelas
//
//  Created by labmacmini12 on 25/07/2018.
//  Copyright © 2018 cursoIOS. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var vrLabel: UILabel!
    
    var descricao:String!
    
    //finaliza a execução da tela 2
    @IBAction func handleBack(_ sender: Any) {
        //self.dismiss(animated: true, completion: nil)
        //não é possivel usar o dismiss utilizando o navigation controller
        //se a tela foi chamada por push, para voltar é necessário o pop
        self.navigationController?.popViewController(animated: true)
    }
    override func viewDidLoad() {
        self.navigationItem.title = "Tela 2"
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        vrLabel.text = descricao
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
