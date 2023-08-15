//
//  ViewController.swift
//  DemoUnitTestApp
//
//  Created by Zaki on 15.08.2023.
//

import UIKit

class ViewController: UIViewController {

    private var volume = 0
    
    func setVolume(volume: Int) -> Int {
        return min(max(volume, 0), 100)
    }
    
    func CompareChars(wordOne: String, wordTwo: String) -> Bool {
        return Set(wordOne) == Set(wordTwo)
    }

}

