//
//  SplashScreen.swift
//  marvel
//
//  Created by Marco Ramírez Solís on 08/04/22.
//

import SwiftUI

struct SplashScreen: View {
    @State var animate = false
    @State var endSplash = false
    
    var body: some View {
        ZStack {
            Home()
            ZStack {
                Color("BG")
                
                GeometryReader {
                    proxy in
                    let size = proxy.size
                    
                    ZStack {
                        // Home()
                        
                        HStack {
                            Image("marvel-logo")
                                .resizable()
                                .renderingMode(.original)
                                .aspectRatio(contentMode: animate ? .fill : .fit)
                                .frame(width: animate ? nil : size.width / 2, height: animate ? nil : size.width / 2)
                                .scaleEffect(animate ? 6 : 1)
                        }
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                }
            }.ignoresSafeArea(.all, edges: .all)
                .onAppear(perform: animateSplash)
                .opacity(endSplash ? 0 : 1)
        }
    }
    
    func animateSplash() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            withAnimation(Animation.easeOut(duration: 0.4)) {
                animate.toggle()
            }
            
            withAnimation(Animation.easeOut(duration: 0.35)) {
                endSplash.toggle()
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
