//
//  Converter.swift
//  HellowSwift25022017
//
//  Created by Macuser on 25.02.17.
//  Copyright © 2017 Macuser. All rights reserved.
//

import Foundation

struct Converter {
    let forwardRatio:Double // Округление в олдну сторону
    let backwardRatio:Double //Округление в другую сторону
    
    var precision:Int //Округление точности
    
    func convertForward(amount:Double)->Double{
        return roundValue(amount: amount * forwardRatio, precision: self.precision)
    }
    func convertBackward(amount:Double)->Double{
        return roundValue(amount: amount * backwardRatio, precision: self.precision)
    }
private func roundValue(amount:Double, precision:Int)->Double{
//    пусть amount = 2.5555555
//    precision = 2
//    multiply = 100
        let multiply = pow(10, Double(precision))
//        эта часть округлит наше число до целых, но так как мы его умнижили в несколько раз, то если потом
//        round (2.5555555 * 100) = round (255.5555555) = 255
        let newValue = round(amount * multiply)
//    255 / 100 = 2.55 
        return newValue / multiply
    }
}

