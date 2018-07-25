//
//  ViewController.swift
//  TrocaDeTelas
//
//  Created by labmacmini12 on 25/07/2018.
//  Copyright © 2018 cursoIOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func handleTrocaTela(_ sender: UIButton) {
        let proximaTela = self.storyboard?.instantiateViewController(withIdentifier: "tela2") as! ViewController2
        proximaTela.descricao = "AGORA FOI"
        self.present(proximaTela, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if(segue.identifier == "tela2"){
            let proximaTela = segue.destination as! ViewController2
            proximaTela.descricao = "AGORA VAI"
        }
        if(segue.identifier == "tela3"){
            //faço outra coisa
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

