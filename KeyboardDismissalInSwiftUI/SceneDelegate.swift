//
//  SceneDelegate.swift
//  KeyboardDismissalInSwiftUI
//
//  Created by Jonathan Badger on 11/11/20.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        let appTabView = AppTabView()

        // Use a UIHostingController as window root view controller.
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: appTabView)
            self.window = window
            window.makeKeyAndVisible()
        }
    }
}

