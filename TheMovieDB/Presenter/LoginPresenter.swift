//
//  LoginPresenter.swift
//  TheMovieDB
//
//  Created by Dai Flores on 16/08/22.
//

import Foundation
import FirebaseAuth
import UIKit

class LoginPresenter: LoginModelProtocol{
    func authentication(username: String, password: String) -> Bool {
        if (username == "prueba@gmail.com" && password == "prueba"){
            return true
            
        }else{
            return false
            }
        }
}
