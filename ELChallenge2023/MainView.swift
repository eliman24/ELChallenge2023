//
//  SwiftUIView.swift
//  ELChallenge2023
//
//  Created by Elisabeth Manalo on 8/18/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                ZStack {
                    Image("linebg3")
                        .resizable()
                        .frame(width: 393.0, height: 1250.0)
                        .edgesIgnoringSafeArea(.all)
                    
                    VStack {
                        
                        HStack {
                            VStack(alignment: .leading, spacing: 7) {
                                Image("product7")
                                    .resizable()
                                    .modifier(ImageSize())
                                Text("Melting Soft Creme/Mask Moisturizer")
                                    .modifier(ProductName())
                                Text("Comfortable, cushy, pillowy feel.")
                                    .modifier(ProductDesc())
                                Text("$48.00")
                                    .modifier(ProductName())
                            }
                            .modifier(ProductIcon())
                            
                            VStack(alignment: .leading, spacing: 7) {
                                Image("product2")
                                    .resizable()
                                    .modifier(ImageSize())
                                Text("2-in-1 Foam Cleanser")
                                    .modifier(ProductName())
                                Text("Cleanses + Deeply Purifies. Kicks off regimen.")
                                    .modifier(ProductDesc())
                                Text("$27.00")
                                    .modifier(ProductName())
                            }
                            .modifier(ProductIcon())
                        }
                        
                        HStack {
                            VStack(alignment: .leading, spacing: 7) {
                                Image("product9")
                                    .resizable()
                                    .modifier(ImageSize())
                                Text("Airy Lotion")
                                    .modifier(ProductName())
                                Text("Boosts moisture after one application")
                                    .modifier(ProductDesc())
                                Text("$48.00")
                                    .modifier(ProductName())
                            }
                            .modifier(ProductIcon())
                            
                            VStack(alignment: .leading, spacing: 7) {
                                Image("product8")
                                    .resizable()
                                    .modifier(ImageSize())
                                Text("Radiant Essence Treatment Lotion")
                                    .modifier(ProductName())
                                Text("Delivers a cushioning, hydrating infusion")
                                    .modifier(ProductDesc())
                                Text("$27.00")
                                    .modifier(ProductName())
                            }
                            .modifier(ProductIcon())
                        }
                    }
                }
            }
        }
        .toolbar(.hidden, for: .navigationBar)
    }
}
    
struct ImageSize: ViewModifier {
    func body(content: Content) -> some View {
        content
            .aspectRatio(contentMode: .fit)
            .cornerRadius(15)
    }
}

struct ProductName: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.headline)
            
    }
}

struct ProductDesc: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.gray)
    }
}

struct ProductIcon : ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(9)
            .background(Rectangle().foregroundColor(.white))
            .cornerRadius(15)
            .shadow(radius: 12)
            .padding()
    }
}
    
struct Main_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
