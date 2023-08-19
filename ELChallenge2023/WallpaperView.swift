//
//  FirstView.swift
//  ELChallenge2023
//
//  Created by Elisabeth Manalo on 8/18/23.
//

import SwiftUI

struct WallpaperView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                ZStack {
                    VStack {
                        Text("Wallpapers")
                            .font(.system(.largeTitle, weight: .bold))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .clipped()
                            .padding(.leading)
                            .padding(.bottom, 8)
                        LazyVGrid(columns: [GridItem(.flexible(), spacing: 4), GridItem(.flexible(), spacing: 4)], spacing: 4) {
                            ForEach(0..<5) { _ in // Replace with your data model here
                                Image("estee 16")
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
                                    .aspectRatio(1/1, contentMode: .fit)
                                    .clipped()
                                    .mask { RoundedRectangle(cornerRadius: 30, style: .continuous) }
                            }
                        }
                        .padding(.horizontal)
                    }
                    .frame(maxWidth: .infinity)
                    .clipped()
                    .padding(.top, 98)
                    .padding(.bottom, 150)
                }
            }
        }
    }
}

struct WallpaperView_Previews: PreviewProvider {
    static var previews: some View {
        WallpaperView()
    }
}
