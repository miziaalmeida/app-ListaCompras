//
//  ItemManager.swift
//  appListaCompras
//
//  Created by Mizia Lima on 10/4/20.
//  Copyright © 2020 Mizia Lima. All rights reserved.
//

import Foundation

class ItemManager {
    private var itemList = [Item]()
    
    func createItem(nome: String, quantidade: Double) -> Item {
        if existeItem(nome) {
            let item = Item(nome: nome, quantidade: quantidade)
            itemList.append(item)
            print(item.nome)
            return item
        }
    }
    
    func getItem(name: String) -> Item {
        for i in itemList {
            if(i.nome == name){
                return i
            }
        }
    }
    
    func getList() -> [Item]? {
        return itemList
    }
    
    //Funcao para verificar se o item existe no array
    func existeItem(_ name: String) -> Bool {
        for i in itemList {
            if i.nome == name{
                return true
            }
        }
        return false
    }
}
