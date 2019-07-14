//
//  ContentView.swift
//  Grid-Demo
//
//  Created by Lucas Silveira on 13/07/19.
//  Copyright © 2019 Lucas Silveira. All rights reserved.
//

import SwiftUI

struct ContentView : View {
  
  let dishes = Dish.all()
  
  var body: some View {
    
    let chunkedDishes = dishes.chunked(into: 2)
    
    return List {
      ForEach(0..<chunkedDishes.count) { index in
        HStack {
          ForEach(chunkedDishes[index]) { dish in
            Image(dish.imageURL)
              .resizable()
              .scaledToFit()
          }
        }
      }
    }
  }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
#endif
