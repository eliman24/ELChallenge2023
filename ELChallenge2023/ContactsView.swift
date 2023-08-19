//
//  MainView.swift
//  ELChallenge2023
//
//  Created by Elisabeth Manalo on 8/18/23.
//

import SwiftUI

struct ContactsView: View {
    let products = ["Holly", "Josh", "Rhonda", "Ted"]
    @State private var searchText = ""

    var body: some View {
        NavigationStack {
                    List {
                        ForEach(searchResults, id: \.self) { name in
                            NavigationLink {
                                Text(name)
                            } label: {
                                Text(name)
                            }
                        }
                    }
                    .navigationTitle("Contacts")
                }
                .searchable(text: $searchText)
    }
    
    var searchResults: [String] {
            if searchText.isEmpty {
                return products
            } else {
                return products.filter { $0.contains(searchText) }
            }
        }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView()
    }
}
