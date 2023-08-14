//
//  AnimalGridItemView.swift
//  Africa
//
//  Created by Ali on 10.10.2021.
//

import SwiftUI

struct AnimalGridItemView: View {
    //MARK: Properties
    let animal: Animal
    
    //MARK: Body
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

//MARK: Preview
struct AnimalGridItemView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        AnimalGridItemView(animal: animals.first!)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
