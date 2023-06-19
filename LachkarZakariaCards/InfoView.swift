//
//  InfoView.swift
//  LachkarZakariaCards
//
//  Created by zakaria lachkar on 22/03/2023.
//

import SwiftUI

struct InfoView: View {
    
    var body: some View {
        ForEach(K.infos){ info in
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.white)
                .frame(height: 50)
                .foregroundColor(.white)
                .overlay(
                    HStack(content: {
                        Image(systemName: info.img)
                            .foregroundColor(Color(red: 0.95, green: 0.77, blue: 0.06))
                            .padding(.leading)
                        Text(info.text)
                            .foregroundColor(Color(red: 0.95, green: 0.77, blue: 0.06))
                        Spacer()
                    })
                    .font(.system(size: 15))
                ).padding(.all)
                .gesture(TapGesture().onEnded {
                    guard let url = URL(string: info.lien) else { return }
                        UIApplication.shared.open(url)
                    })
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
            .previewLayout(.sizeThatFits)
    }
}
