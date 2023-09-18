//
//  FavoriteModel.swift
//  FavoriteBook
//
//  Created by Onur Bulut on 18.09.2023.
//

import Foundation
import SwiftUI

struct FavoriteModel : Identifiable{
    var id = UUID()
    var title : String
    var elements : [FavoriteElement]
    
}
struct FavoriteElement : Identifiable{
    var id = UUID()
    var name : String
    var imageName : String
    var description : String
}




// Bands

let metallica = FavoriteElement(name: "Metallica", imageName: "metallica", description: "No 1 Music Band")
let megadeth = FavoriteElement(name: "Megadeth", imageName: "megadeth", description: "No 2 Music Band")
let ironMaiden = FavoriteElement(name: "Iron Maiden", imageName: "ironmaiden", description: "No 3 Music Band")


let favoriteBands = FavoriteModel(title: "Favorite Bands", elements: [metallica,megadeth,ironMaiden])


// Movies

let pulpFiction = FavoriteElement( name: "Pulp Fiction", imageName: "pulpfiction", description: "No 1 Movie")
let theDarkKnight = FavoriteElement( name: "The Dark Knight", imageName: "thedarkknight", description: "No 2 Movie")
let killBill = FavoriteElement( name: "Kill Bill", imageName: "killbill", description: "No 3 Movie")


let favoriteMovies = FavoriteModel(title: "Favorite Movi", elements: [pulpFiction,theDarkKnight,killBill])

let myFavorites = [favoriteMovies, favoriteBands]
