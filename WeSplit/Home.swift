//
//  Home.swift
//  WeSplit
//
//  Created by tobi adegoroye on 24/07/2022.
//

import SwiftUI

struct Home: View {
    let students = ["harry", "tom", "tobi"]
    @State private var selectedStudent = "harry"
    var body: some View {
        NavigationView {
            Form {
                Picker("selected student", selection: $selectedStudent){
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
                
                Text("Your selected student is: \(selectedStudent)")
            }

        }
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
