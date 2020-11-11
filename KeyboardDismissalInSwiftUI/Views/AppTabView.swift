//
//  TabView.swift
//  ExploringKeyboardDismissal
//
//  Created by Jonathan Badger on 11/5/20.
//

import SwiftUI

struct AppTabView: View {
    var body: some View {
        TabView {
            FormView()
                .tabItem {
                    VStack {
                        Text("😢 No KB Dismiss")
                    }
                }
            NoFormViewFix1()
                .tabItem {
                    Text("😕 Fix 1 (No form)")
                }
            FormViewFix1()
                .tabItem {
                    VStack {
                        Text("😕 Fix 1")
                    }
                }
            FormViewFix2()
                .tabItem {
                    VStack {
                        Text("😀 Fix 2")
                    }
                }
        }
    }
}

struct AppTabView_Previews: PreviewProvider {
    static var previews: some View {
        AppTabView()
    }
}


