//
//  String+Extension.swift
//  HellowSwift25022017
//
//  Created by Macuser on 25.02.17.
//  Copyright © 2017 Macuser. All rights reserved.
//

import Foundation
extension String {
    var filterForNumberConvertion:String {
//        Создадим набор из разрешенных символов
        
        let allowedChars = "1234567890.,".characters
//проверимсодержиться ли каждый символ строки
        let result = self.characters.filter {
            char -> Bool in
            let contains = allowedChars.contains(char)
            return contains
        }
        return String(result)
    }
    
}
