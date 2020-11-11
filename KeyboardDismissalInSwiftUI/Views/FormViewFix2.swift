//
//  FormViewFix2.swift
//  ExploringKeyboardDismissal
//
//  Created by Jonathan Badger on 11/5/20.
//

import SwiftUI

struct FormViewFix2: View {
    @State var name = ""
    @State var yearsExpereince: Int = 0
    @State var tapGestureActive = false
    
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
                Section(header: Text("Keyboard Dismissal")) {
                    VStack {
                        Text("State: \(tapGestureActive ? "Active": "Inactive")")
                        Button(action: {
                            if tapGestureActive {
                                UIApplication.shared.removeTapGestureRecognizer()
                                self.tapGestureActive = false
                            } else {
                                UIApplication.shared.addTapGestureRecognizer()
                                self.tapGestureActive = true
                            }
                        },
                        label: {
                            Text(tapGestureActive ? "Deactivate" : "Activate")
                            })
                        .padding(3)
                        .overlay(RoundedRectangle(cornerRadius: 6)
                          .stroke(lineWidth: 1.5)
                          .foregroundColor(Color(.systemBlue)))
                        }
                    }
            }
            .navigationTitle(Text("Application"))
        }
    }
}

struct FormViewFix2_Previews: PreviewProvider {
    static var previews: some View {
        FormViewFix2()
    }
}
