//
//  ViewController.swift
//  appListaCompras
//
//  Created by Mizia Lima on 9/16/20.
//  Copyright © 2020 Mizia Lima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Variaveis
    var itemList = ItemManager()
    
    //MARK: Outlets
    @IBOutlet weak var textFieldNome: UITextField!
    @IBOutlet weak var textFieldQuantidade: UITextField!
    
    @IBOutlet weak var buttonSalvar: UIButton!
    @IBOutlet weak var buttonExcluir: UIButton!
    
    @IBOutlet weak var labelProduto: UILabel!
    @IBOutlet weak var labelItens: UILabel!
    
    //MARK: Actions
    @IBAction func buttonSalvarAction(_ sender: Any) {
        criarProduto()
    }
    
    @IBAction func buttonLimparAction(_ sender: Any) {
    }
    
    @IBAction func buttonExcluirAction(_ sender: Any) {
        
    }
    
    func criarProduto() {
        if !produtoExiste(nome: textFieldNome.text!) {
            let item = Item(nome: textFieldNome.text!, quantidade: Int(textFieldQuantidade.text!)!)
            arrayItens.append(item)
            
            listaProdutos()
        }
    }
    
    func editarProduto() {
        if produtoExiste(nome: textFieldNome.text!){
            textFieldQuantidade = 
        }
    }
    
    func excluirProduto() {
        
    }
    
    
    func produtoExiste(nome: String) -> Bool {
        for item in arrayItens {
            if item.nome == nome {
                labelProduto.text = nome
                textFieldQuantidade.text = String(item.quantidade)
                return true
            }
        }
        return false
    }
    
    func listaProdutos() {
        labelItens.text = ""
        for item in arrayItens {
            labelItens.text = labelItens.text! + item.nome + " "
            //falta quebrar linha
        }
    }
    

    
    
    //MARK: ViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFieldNome.delegate = self
        textFieldQuantidade.delegate = self
        
    }
}


extension ViewController: UITextFieldDelegate {
    
}
