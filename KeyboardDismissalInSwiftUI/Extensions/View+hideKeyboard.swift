//
//  View+hideKeyboard.swift
//  ExploringKeyboardDismissal
//
//  Created by Jonathan Badger on 11/3/20.
//
// Adapted from: Hacking With Swift
// Accessed: 11/3/2020
// Link: https://www.hackingwithswift.com/quick-start/swiftui/how-to-dismiss-the-keyboard-for-a-textfield

import Foundation
import SwiftUI

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif




