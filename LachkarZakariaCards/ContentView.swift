//
//  ContentView.swift
//  LachkarZakariaCards
//
//  Created by zakaria lachkar on 22/03/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.10, green: 0.74, blue: 0.61)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image(K.imgName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("Lachkar Zakaria")
                    .font(Font.custom(K.nameFont, size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Engineer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
