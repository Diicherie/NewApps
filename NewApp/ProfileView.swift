//
//  GalleryView.swift
//  NewApp
//
//  Created by Dinara Abishova on 14.04.2024.
//
import LocalAuthentication
import SwiftUI

struct ProfileView: View {
    @State private var isUnLocked = false
    @State var text = ""
    @State var text1 = ""
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color.blue,Color.purple], startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.top)
       
        VStack {
            
            
            Text("My profile")
                .bold()
           
                
            ZStack {
                Text("Accont")
//                if #available(iOS 17.0, *) {
                    .foregroundStyle(.blue)
//                } else {
//                    self.tint(.blue)
//                }
                RoundedRectangle(cornerRadius: 5)
                    .frame(height: 45)
                HStack {
                    Image(systemName: "person.circle.fill")
                        .foregroundColor(.green)
                    TextField("Login", text: $text)
                        .foregroundColor(.black)
                }
                .padding(20)
            }
         
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 5)
                        .frame(height: 45)
                    HStack {
                        Image(systemName: "lock.square")
                            .foregroundColor(.green)
                            
                        TextField("Password", text: $text1)
                            .foregroundColor(.black)
                    }
                    .padding()
                    .foregroundColor(.green)
                }
            }
            Button {
 
            }
        label: {
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(.blue)
                    .frame(height: 45)
                Text("Enter")
                    .foregroundColor(.white)
            }
        }
            EmailServiceIView()
        }
        .onAppear(perform: authenticate)
        
       
    }
    }
    
func authenticate() {
    let context = LAContext()
    var error: NSError?
    if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
        let reason = "We need to unlock your data."
        
        context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { success, authenticationError in
            if success {
                isUnLocked = true
            } else {
                
            }
        }
    } else {
        
    }
    
    #Preview {
        ProfileView()
    }
}
    
    
}
