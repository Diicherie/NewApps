//
//  CustomerCare.swift
//  NewApp
//
//  Created by Dinara Abishova on 05.05.2024.
//

import SwiftUI
struct CallToCustomerCareView: View {
    @State private var isButtonEnabled = true
    
    var body: some View {
        Button(action: {
            UIApplication.shared.open(URL(string: "tel://+77252210894")!)
        }) {
            Text("Call Customer Care")
        }
        .disabled(!isButtonEnabled)
        .onAppear {
            checkButtonAvailability()
        }
    }
    
    func checkButtonAvailability() {
        let currentDate = Date()
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: currentDate)
        let weekday = calendar.component(.weekday, from: currentDate)
        
//        if weekday == 1 || weekday == 7 {
//            // deactivate button on weekends
//            isButtonEnabled = false
//        } else if hour < 9 || hour >= 17 {
//            // deactivate button outside of business hours
//            isButtonEnabled = false
//        } else {
            isButtonEnabled = true
//        }
    }
}

#Preview {
    CallToCustomerCareView()
}
