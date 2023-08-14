//
//  ExternalWeblinkView.swift
//  Africa
//
//  Created by Ali on 10.10.2021.
//

import SwiftUI

struct ExternalWeblinkView: View {
    //MARK: Properties
    let animal : Animal
    
    //MARK: Body
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string:"https://wikipedia.org"))!)
                }
                .foregroundColor(.accentColor)
            }//: HStack
        }//: Box
    }
}

//MARK: Preview
struct ExternalWeblinkView_Previews: PreviewProvider {
    static let animals : [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        ExternalWeblinkView(animal: animals.first!)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
