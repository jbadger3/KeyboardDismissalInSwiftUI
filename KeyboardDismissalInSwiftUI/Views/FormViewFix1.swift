//
//  FormView2.swift
//  ExploringKeyboardDismissal
//
//  Created by Jonathan Badger on 11/5/20.
//

import SwiftUI

/* The Picker and Button do NOT work when using the hideKeyboard extension in a Form! */
struct FormViewFix1: View {
    @State var name = ""
    @State var yearsExpereince: Int = 0
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Applicant Info"), content: {
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
                })
            }
            .onTapGesture {
                self.hideKeyboard()
            }
            .navigationTitle(Text("Application"))
        }
    }
}

struct FormViewFix1_Previews: PreviewProvider {
    static var previews: some View {
        FormViewFix1()
    }
}
