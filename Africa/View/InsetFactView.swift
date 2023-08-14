 //
//  InsetFactView.swift
//  Africa
//
//  Created by Ali on 10.10.2021.
//

import SwiftUI

struct InsetFactView: View {
    //MARK: Properties
    let animal: Animal
    
    //MARK: Body
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }//: TabView
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }//: Group
    }
}

//MARK: Preview
struct InsetFactView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetFactView(animal: animals.first!)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
