//
//  ViewController.swift
//  Cocacola
//
//  Created by đào sơn on 06/05/2024.
//

import UIKit

class ViewController: UIViewController {
    var exchangeRate: Int = 3

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        let startBottles = 9

        let totalBottles = calculateCocaBottles(startBottles: startBottles)
        print("Total CocaCola bottles which can be drunk: \(totalBottles)")
    }

    func calculateCocaBottles(startBottles: Int) -> Int {
        var totalBottles = startBottles
        var emptyBottles = startBottles

        // Till enough empty bottles to exchange
        while emptyBottles >= exchangeRate {
            let newBottles = emptyBottles/3
            totalBottles += newBottles
            emptyBottles = newBottles + emptyBottles % 3
        }

        return totalBottles
    }
}

