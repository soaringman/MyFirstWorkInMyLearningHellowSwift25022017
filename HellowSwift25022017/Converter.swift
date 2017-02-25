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
    func roundValue(amount:Double, precision:Int)->Double{
        let multiply = pow(10, Double(precision))
//        эта часть округлит наше число до целых, но так как мы его умнижили на несколько раз и потом его
        let newValue = round(amount * multiply)
        return newValue / multiply
    }
}
