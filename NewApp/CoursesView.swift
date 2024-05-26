//
//  CoursesView.swift
//  NewApp
//
//  Created by Dinara Abishova on 14.04.2024.
//

import SwiftUI

struct CoursesView: View {
    var courses:[Courses] = [Courses(courseNumber:"6B011110", name: "Pedagogy and psychology"),Courses(courseNumber: "6B011112", name: "Psychology and mediation"), Courses(courseNumber: "6B01440", name: "Psycical Culture and sports"), Courses(courseNumber: "6B01520", name: "Physics"), Courses(courseNumber: "6B01530", name: "Computer Science"), Courses(courseNumber: "6B01531", name: "Mathematics-Computer Science"), Courses(courseNumber: "6B01550", name: "Biology"), Courses(courseNumber: "6B01610", name: "History"), Courses(courseNumber: "6B01710", name: "Kazakh language and literature"), Courses(courseNumber: "6B01720", name: "Russian language and literature"), Courses(courseNumber: "6B01730", name: "Foreign Language: two foreign languages"),Courses(courseNumber: "6B01720", name: "Translation Studies"), Courses(courseNumber: "6B01730", name: "Foreign Philology"), Courses(courseNumber: "6B04170", name: "Assessment"), Courses(courseNumber: "6B04210", name: "Jurispridence"), Courses(courseNumber: "6B04211", name: "Criminal law and civil process"), Courses(courseNumber: "6B04220", name: "International Law"), Courses(courseNumber: "6B05210", name: "Biotechnology"), Courses(courseNumber: "6B05121", name: "Industrial Biotechnology"), Courses(courseNumber: "6B05210", name: "Ecology")]
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color.blue,Color.purple], startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.top)
            List(courses) { cour in
                
                HStack {
                    Text(cour.courseNumber)
                        .bold()
                    Text(cour.name)
                        .opacity(0.9)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                }
                .listRowBackground(Color.clear)
                .ignoresSafeArea()
            }
            .listStyle(PlainListStyle()) // Set the list style to plain
            .background(Color.clear) // Set the background color of the list to clear
            .mask(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white) // Masking shape should be filled with any color other than clear
            )
        }
    }
}

#Preview {
    CoursesView()
}
