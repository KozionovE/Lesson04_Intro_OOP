//
//  main.swift
//  Lesson4_Intro_OOP
//
//  Created by Evgeniy Kozionov on 25.12.2020.
//

import Foundation

/*
 1. Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.

 2. Описать пару его наследников trunkCar и sportСar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.

 3. Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет trunkCar, а какие – sportCar. Добавить эти действия в перечисление.

 4. В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.

 5. Создать несколько объектов каждого класса. Применить к ним различные действия.

 6. Вывести значения свойств экземпляров в консоль.
 */

enum hatchState {
    case open, close
}

enum trunkState {
    case full, empty
}


class car {
    let brand: String
    let yearOfProduction: Int
    init (brand: String, yearOfProduction: Int) {
        self.brand = brand
        self.yearOfProduction = yearOfProduction
    }
}

class sportCar : car {
    var hatch : hatchState
    init (brand : String, yearOfProduction : Int, hatch : hatchState) {
        self.hatch = hatch
        super.init(brand : brand, yearOfProduction: yearOfProduction)
    }
    
    func hatchState() {
        if hatch == .open {
            print("\(brand). Год выпуска \(yearOfProduction). Люк открыт")
        } else {
            print("\(brand). Год выпуска \(yearOfProduction). Люк закрыт")
        }
    }
    
}

class truckCar : car {
    var trunk : trunkState
    init (brand: String, yearOfProduction: Int, trunk : trunkState) {
        self.trunk  = trunk
        super.init(brand : brand, yearOfProduction : yearOfProduction)
    }
    
    func trankState() {
        if trunk == .full {
            print("\(brand). Год выпуска \(yearOfProduction). Багажник заполнен")
        } else {
            print ("\(brand). Год выпуска \(yearOfProduction).Багажник пустой")
        }
    }
}

let porshe = sportCar(brand: "Porshe", yearOfProduction: 2019, hatch: .open)
let lada = sportCar(brand: "Лада", yearOfProduction: 1979, hatch: .close)

let zil = truckCar(brand: "Зил", yearOfProduction: 1988, trunk: .full)
let kamaz = truckCar(brand: "Камаз", yearOfProduction: 1955, trunk: .empty)
porshe.hatchState()
lada.hatchState()

zil.trankState()
kamaz.trankState()




