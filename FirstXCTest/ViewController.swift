//
//  ViewController.swift
//  FirstXCTest
//
//  Created by SERGEI KOSAREV on 7/14/22.
//

import UIKit

class ViewController: UIViewController {

    private(set) var volume = 0
    
    func setVolume(value: Int) {
        volume = min(max(value, 0), 100)
    }
    func charactersCompare(stringOne: String, stringTwo: String) -> Bool {
        return Set(stringOne) == Set(stringTwo)
    }

}


