//
//  FormViewFix3.swift
//  ExploringKeyboardDismissal
//
//  Created by Jonathan Badger on 11/6/20.
//

import SwiftUI

struct NoFormViewFix1: View {
    @State var name = ""
    @State var yearsExpereince: Int = 0
    
    var body: some View {
        NavigationView {
            VStack {
                    HStack {
                        Text("Name:")
                            .fontWeight(.thin)
                        TextField("", text: $name).background(Color(.systemYellow).opacity(0.3))
                    }
                    Picker("Years of experience:",
                           selection: $yearsExpereince,
                           content: {
                            ForEach(0..<11) { years in
                                Text("\(years)")
                            }
                           })
                    HStack {
                        Spacer()
                        Button(action: {
                            print("Submit button pressed.")
                            self.hideKeyboard()
                        },
                        label: {
                            Text("Submit")
                        })
                        .padding(3)
                        .overlay(
                            RoundedRectangle(cornerRadius: 6)
                                .stroke(lineWidth: 1.5)
                                .foregroundColor( Color(.systemBlue) )
                        )
                        Spacer()
                    }
            }
            .navigationTitle(Text("Application"))
            .onTapGesture {
                self.hideKeyboard()
            }
            .background(Color(.sRGB, red: 1.0, green: 0, blue: 0, opacity: 0.1))
        }
    }
}

struct NoFormViewFix1_Previews: PreviewProvider {
    static var previews: some View {
        NoFormViewFix1()
    }
}
