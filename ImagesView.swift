//
//  ImagesView.swift
//  ELChallenge2023
//
//  Created by Elisabeth Manalo on 8/18/23.
//

import SwiftUI

struct ImagesView: View {
    @State private var activeImageIndex = 0
    let images = ["image1", "image2", "image3", "image4", "image5"]
    let imageChangeInterval: TimeInterval = 3 // Set the interval in seconds
    @State private var timer: Timer?
    
    var body: some View {
        VStack {
            Image(images[activeImageIndex])
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .padding()
        }
        .onAppear {
            startAutoImageChange()
        }
        .onDisappear {
            stopAutoImageChange()
        }
    }
    
    func showNextImage() {
        activeImageIndex = (activeImageIndex + 1) % images.count
    }
    
    func startAutoImageChange() {
        timer = Timer.scheduledTimer(withTimeInterval: imageChangeInterval, repeats: true) { _ in
            showNextImage()
        }
    }
    
    func stopAutoImageChange() {
        timer?.invalidate()
        timer = nil
    }
}

struct ImagesView_Previews: PreviewProvider {
    static var previews: some View {
        ImagesView()
    }
}
