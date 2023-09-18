//
//  ContentView.swift
//  FavoriteBook
//
//  Created by Onur Bulut on 18.09.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
        VStack {
            List {
                
                ForEach(myFavorites){favorite in
                    Section(header: Text(favorite.title)) {
                        ForEach(favorite.elements){element in
                            
                            NavigationLink(destination: DetailView(chosenFavoriteElement: element)) {
                                Text(element.name)
                            }
                            
                            
                        }
                    }
                }
                
            }.navigationBarTitle(Text("Favorite Book"))
            
        }
    }
}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
