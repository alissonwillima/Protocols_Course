import UIKit

import UIKit

//PROTOCOL E UMA LISTA DE METODOS E PROPRIEDADES
//COM O PROTOCOL E POSSIVEL SE FAZER UM CLEAN CODE

enum Direction{
    case left
    case right
}

protocol Vehicle {
    func accelerate()
    func stop()
    func turn(_ direction: Direction)
    var name: String {get set}
    init(initalVehicle: String)
}

class Bike: Vehicle {
    
    var peddling = false
    var brakesApplied = false
    var name: String
    var direction: Direction
    
    required init(initalVehicle: String) {
        name = initalVehicle
        direction = .right
     }
    
    func accelerate() {
        print("acelerar")
        peddling = true
        brakesApplied = false
    }
    
    func stop() {
        print("parar")
        brakesApplied = true
        peddling = false
        
    }
    
    func turn(_ direction: Direction) {
        self.direction = direction
    }
    
}

var bike = Bike(initalVehicle: "Caloi")
bike.accelerate()
bike.turn(.left)
print(bike.peddling)




//protocol Vehicle {
//    func accelerate()
//    func stop()
//}
//
//class Bike: Vehicle {
//    func accelerate() {
//        print("acelerar")
//        paddling = true
//        brakesApplied = false
//    }
//
//    func stop() {
//        print("parar")
//        paddling = true
//        brakesApplied = false
//
//    }
//
//    var paddling = false
//    var brakesApplied = false
//}
//var bike = Bike()
//bike.accelerate()
//print(bike.paddling)

