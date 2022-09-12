//
//  ContentView.swift
//  Grocery Items
//
//  Created by Macbook Air on 12/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var groceryItems = ["Burger", "Chips", "Yogurt", "Ice cream", "Blue berry"]
    
    @State var product = ""
    
    var body: some View {
    
        VStack{
            
            List(groceryItems, id: \.self) {
                groceryItem in
                HStack{
    
                    Image (groceryItem)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70, height: 70)
                    Text(groceryItem)
                       .font(.headline)
                }
          //      .ontap
            }
            HStack{
            Button(action:{
                groceryItems.append(product)
                
            }) {
               Image (systemName: "plus")
                    .resizable()
                    .scaledToFit()
                   .frame(width: 25, height: 25)
                   .foregroundColor(.white)
                   .padding()
                   .background(Color.red)
                   .cornerRadius(10)
                   .padding()
            }
        
            
    TextField ("ادخل المنتج", text: $product)
        .multilineTextAlignment(.center)
        .font(.headline)
        
            Button(action:{
               groceryItems.remove(at: 0)
                
            }) {
               Image (systemName: "minus")
                    .resizable()
                    .scaledToFit()
                   .frame(width: 25, height: 25)
                   .foregroundColor(.white)
                   .padding()
                   .background(Color.red)
                   .cornerRadius(10)
                   .padding()
            }
           Button(action:{
               groceryItems.append(groceryItems.randomElement() ?? "")

            }) {
              Image (systemName: "questionmark")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 25, height: 25)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(10)
                    .padding()
                 //   .cornerRadius(10)
                  
            }
        }
        }
    }
    
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
