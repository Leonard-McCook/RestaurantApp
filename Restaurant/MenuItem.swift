//
//  MenuItem.swift
//  Menu
//
//  Created by Leonard McCook-Carr on 4/29/23.
//

import Foundation

struct MenuItem: Identifiable {
    
    var id: UUID = UUID()
    var name:String
    var price:String
    var imageName:String
}
