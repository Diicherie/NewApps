//
//  EmailServiceIView.swift
//  NewApp
//
//  Created by Dinara Abishova on 12.05.2024.
//

import SwiftUI

struct EmailServiceIView: View {
    
    @State private var isButtonEnabled = true
    
    var body: some View {
        
        Button(action: {
            UIApplication.shared.open(URL(string: "info@auezov.edu.kz")!)
        }) {
            
            
                ZStack {
                    Text("E-mail Support")
//                        if #available(iOS 17.0, *) {
                            .foregroundStyle(.white)
//                        } else {
//                            // Fallback on earlier versions
//                        }
                    RoundedRectangle(cornerRadius: 5)
                        .frame( width: 250, height: 45)
                        
                    
                    
                        
                        .padding(20)
                        .disabled(!isButtonEnabled)
                        .onAppear {
                            checkButtonAvailability()
                        }
                }
            }
        
    }
    
            func checkButtonAvailability() {
                let currentDate = Date()
                let calendar = Calendar.current
                let hour = calendar.component(.hour, from: currentDate)
                let weekday = calendar.component(.weekday, from: currentDate)
                
                if weekday == 1 || weekday == 7 {
                    // deactivate button on weekends
                    isButtonEnabled = false
                } else if hour < 9 || hour >= 17 {
                    // deactivate button outside of business hours
                    isButtonEnabled = false
                } else {
                    isButtonEnabled = true
                }
            }
            
        }
    
        #Preview {
            EmailServiceIView()
        }
    
