//
//  ContentView.swift
//  NewApp
//
//  Created by Dinara Abishova on 14.04.2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        TabView {
            AboutView()
                .tabItem() {
                    VStack {
                        Image(systemName: "info.circle")
                        Text("About us")
                    }
                }
            CoursesView()
                .tabItem {
                    VStack {
                        Image(systemName: "graduationcap.fill")
                        Text("Courses")
                    }
                    
                }
            ProfileView()
                .tabItem {
                    VStack {
                        Image(systemName: "person.circle.fill")
                        Text("My profile")
                    }
                    .padding()
                    
                }
        }
    }
}
#Preview {
        MainView()
    }

