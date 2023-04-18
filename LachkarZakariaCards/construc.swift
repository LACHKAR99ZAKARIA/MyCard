//
//  construc.swift
//  LachkarZakariaCards
//
//  Created by zakaria lachkar on 22/03/2023.
//

import Foundation

struct K {
    static let nameFont = "Pacifico-Regular"
    static let imgName = "photo"
    
    static var infos : [info] = [
        info(text: "+212 651 696 043", img: "phone" , lien: "tel://+212651696043"),
        info(text: "gmail : lachkar99zakaria@gmail.com", img: "mail", lien: "mailto://lachkar99zakaria@gmail.com"),
        info(text: "github : /LACHKAR99ZAKARIA", img: "link", lien: "https://github.com/LACHKAR99ZAKARIA"),
        info(text: "linkedin : /zakaria-lachkar", img: "link", lien: "https://www.linkedin.com/in/zakaria-lachkar"),
    ]
}

struct info: Identifiable {
    var id = UUID()
    var text : String
    var img : String
    var lien : String
}
