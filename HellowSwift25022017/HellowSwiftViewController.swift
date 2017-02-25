//
//  HellowSwiftViewController.swift
//  HellowSwift25022017
//
//  Created by Macuser on 25.02.17.
//  Copyright © 2017 Macuser. All rights reserved.
//

import UIKit

class HellowSwiftViewController: UIViewController {

    @IBOutlet var nameInput: UITextField!
    
    
    @IBAction func helllowButtonPressed(_ sender: UIButton) {
        //Убедимся что в поле для ввода есть какой то текст
        guard nameInput?.text?.isEmpty == false,
//            и считаем поле для ввода
        let userName = nameInput?.text else {
            return
        }
        
        let greeting = "Здравствуйте \(userName)"
//        создадим контроллек который показывает всплывающее сообщение
        let alert = UIAlertController(title: "Ура", message: greeting, preferredStyle: .alert)
        
//        добавим кнопку для высплывающего окна
        let hellowAction = UIAlertAction(title: "Привет", style: .default) { action in print("Пользователь нажал \(action)")
        
        }
//        добавим кнопку на новый контроллер
        alert.addAction(hellowAction)
//        представим всплывающее сообщение
        present(alert, animated: true, completion: nil)
        
    }
    
}
