//
//  ViewController.swift
//  DemoUnitTestApp
//
//  Created by Zaki on 15.08.2023.
//

import UIKit

class ViewController: UIViewController {

    private(set) var volume = 0
    
    func setVolume(value: Int) {
        volume = min(max(value, 0), 100)
    }
    
    func compareChars(wordOne: String, wordTwo: String) -> Bool {
        return Set(wordOne) == Set(wordTwo)
    }

}

