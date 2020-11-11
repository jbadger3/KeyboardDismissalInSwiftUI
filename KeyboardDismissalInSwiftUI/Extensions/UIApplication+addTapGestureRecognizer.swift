//
//  UIApplication+addTapGestureRecognizer.swift
//  ExploringKeyboardDismissal
//
//  Created by Jonathan Badger on 11/5/20.
//
// Adapted from an answer from Stack Overflow
// Accessed 11/6/2020
// Link: https://stackoverflow.com/questions/56491386/how-to-hide-keyboard-when-using-swiftui/63942065#63942065

import Foundation
import UIKit

extension UIApplication {
    func addTapGestureRecognizer() {
        guard let window = windows.first else { return }
        let tapGesture = UITapGestureRecognizer(target: window, action: #selector(UIView.endEditing))
        tapGesture.cancelsTouchesInView = false
        tapGesture.delegate = self
        tapGesture.name = "MyTapGesture"
        window.addGestureRecognizer(tapGesture)
    }
    
    func removeTapGestureRecognizer() {
        guard let window = windows.first else { return }
        if let tapGestureRecognizer = window.gestureRecognizers?.first(where:{$0.name == "MyTapGesture"}) {
            window.removeGestureRecognizer(tapGestureRecognizer)
        }
    }
}

extension UIApplication: UIGestureRecognizerDelegate {
    public func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return false 
    }
}
