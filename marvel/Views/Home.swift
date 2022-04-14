//
//  Home.swift
//  marvel
//
//  Created by Marco Ramírez Solís on 14/04/22.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack {
            HStack {
                Text("Marvel Heroes")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color("BG"))
                
                Spacer(minLength: 0)
            }
            .padding()
            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            .background(Color.white)
            
            Spacer()
        }
        .ignoresSafeArea(.all, edges: .top)
        .background(Color.black.opacity(0.06).ignoresSafeArea(.all, edges: .all))
    }
}
