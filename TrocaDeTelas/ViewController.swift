//
//  ViewController.swift
//  TrocaDeTelas
//
//  Created by labmacmini12 on 25/07/2018.
//  Copyright © 2018 cursoIOS. All rights reserved.
//

/************************TROCA DE TELAS**************
 *
 * 1 - TROCA DE TELAS POR MODAL
 *      -não tem relação visual entre as telas
 *      -formas de trocar por modal
 *          - via segue: a segue te dá acesso a referencia da proxima tela.
 *                         porém, como o metodo de segue é o mesmo para todas as telas trocadas,
 *                         é preciso indentificar cada segue no storyboard.
 *
 *          - via código: chamadaa nova tela é feita através de um action
 *                         o action não possuí a referencia para a proxima tela.
 *                         é preciso criar um identificador para a viewcontroller no storyboard
 *                         e através da referencia para o storyboard solicitar a instancia da proxima tela
 *                  self.present(proximaTela, animated: true, completion: nil)

 *
 *          - "voltar": basta chamar o metodo dismiss na tela chamada
 *                  self.dismiss(animated: true, completion: nil)
 *
 * 2 - TROCA DE TELAS POR VAVIGATION CONTROLL
 *
 ***************************************************/



import UIKit

class ViewController: UIViewController {

    @IBAction func handleTrocaTela(_ sender: UIButton) {
        let proximaTela = self.storyboard?.instantiateViewController(withIdentifier: "tela2") as! ViewController2
        proximaTela.descricao = "AGORA FOI"
        
        //alterando para o usar o navigation controller
        //self.present(proximaTela, animated: true, completion: nil)
        self.navigationController?.pushViewController(proximaTela, animated: true)
    }
    override func viewDidLoad() {
        self.title = "Tela principal"
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

