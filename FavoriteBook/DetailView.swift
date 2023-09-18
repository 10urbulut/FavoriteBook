//
//  DetailView.swift
//  FavoriteBook
//
//  Created by Onur Bulut on 18.09.2023.
//

import SwiftUI

struct DetailView: View {
    
    
    var chosenFavoriteElement : FavoriteElement
    
    
    
    var body: some View {
        VStack{
            Image(chosenFavoriteElement.imageName).resizable().aspectRatio(contentMode: .fit)
            Text(chosenFavoriteElement.name).font(.largeTitle).padding()
            Text(chosenFavoriteElement.description)
        }

    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(chosenFavoriteElement: theDarkKnight)
    }
}
