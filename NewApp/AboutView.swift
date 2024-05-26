//
//  About.swift
//  NewApp
//
//  Created by Dinara Abishova on 14.04.2024.
//

import SwiftUI
import AVKit

struct AboutView: View {
    
    @State private var player = AVPlayer()
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color.blue,Color.purple], startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.top)
            ScrollView (showsIndicators: false) {
                Text("Auezov University")
                    .bold()
                    .font(.largeTitle)
                
                Image("Auezov")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding(20)
                
                VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: "AuezovUniversity", withExtension: "mp4")!))
                    .scaledToFit()
                    .padding(.all, 20)
                
                
                
                Text("Auezov South Kazakhstan  University (SKU) is  one of the oldest educational institutions of the Republic of Kazakhstan. Nowadays SKU is committed to excellence in teaching and research, distance education and the active promotion of young scientists. SKU is located in South region of the Republic of Kazakhstan, one of the biggest industrial, trade and cultural centres of the country.SKU regularly rangs among the best univesities of Kazakhstan - according to the results of national ratings, the university is in the top three universities in the country. Moreover, in 2020 the university is among the 500 best universities in the world according to QS World University Ranking. SKU provide a good scientific and educational environment for 25560 students: bachelor's - 24 247, master's - 1171, doctorate - 142. 300 educational programs is developed by academic staff of the University and successfully implemented for bachelors, masters and doctorate students in the following fields of knowledge: Engineering, IT, History, Economics, Business, Chemistry, Bioligy, Biotechnology, Food Science, Pedagogy and many others. 9 undergraduate ang 7 graduate specialties are accredited by German agency ASIIN.")
                    .ignoresSafeArea()
                    .multilineTextAlignment(.leading)
                    .minimumScaleFactor(0.01)
                    .padding(20)
                
                Button {
                    if let url = URL(string: "http://maps.apple.com/?ll=42.3202, 69.592") {
                        if UIApplication.shared.canOpenURL(url) {
                            UIApplication.shared.open(url)
                        }
                        
                    }
                }
            label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(.blue)
                        .frame(height: 45)
                    Text("Get Directions")
                        .foregroundColor(.white)
                }
            }
            .padding(2)
                Text("""
                    Shymkent,
                    Tauke khana street 5,
                    Kazakhstan
                    """)
                .multilineTextAlignment(.leading)
                .padding(.leading, 20)
                .frame(maxWidth: .infinity, alignment: .leading)
                CallToCustomerCareView()
                    .multilineTextAlignment(.leading)
                
                
                
            }
            
            .opacity(1)
        }
    }
}

#Preview {
    AboutView()
}
