//: Playground - noun: a place where people can play

import UIKit

protocol operacionesBasicas {
    
    func suma(a:Int, b:Int) -> Int
    func resta(a:Int, b:Int) -> Int
    
}

class Computadora {
    let cpu:String = "8086"
}

class Calculadora:Computadora, operacionesBasicas {
    
    func suma(a:Int, b:Int) -> Int {
        print("Estoy sumando")
        return a+b
    }
    
    func resta(a:Int, b:Int) -> Int {
        print("Estoy restando")
        return a-b
    }
 
}
