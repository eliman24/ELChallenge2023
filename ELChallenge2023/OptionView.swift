//
//  OptionView.swift
//  ELChallenge2023
//
//  Created by Elisabeth Manalo on 8/18/23.
//

import SwiftUI

struct OptionView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image("leafybg")
                    .resizable()
                    .frame(width: 394.0, height: 852.0)
                    .edgesIgnoringSafeArea(.all)
                Image("whiterec")
                VStack(spacing:20) {
                    Text("Build your own\nPersonalized Skincare Routine")
                        .font(.custom("Times", size: 35))
                        .multilineTextAlignment(.center)
                    NavigationLink(destination: QuizView()) {
                        Text("TAKE THE QUIZ")
                            .fontWeight(.bold)
                            .foregroundStyle(.white.gradient)
                            .padding()
                            .background(Color.F78587)
                            .cornerRadius(1)
                            .font(.title3)
                    }
                    .padding()
                    Text("or view our")
                        .font(.custom("Times", size: 25))
                        .multilineTextAlignment(.center)
                    .padding()
                    NavigationLink(destination: MainView()) {
                        Image("NUTRITIOUS")
                    }
//                    Text("collection")
//                        .font(.custom("Times", size: 25))
//                        .multilineTextAlignment(.center)
                    NavigationLink(destination: MainView()) {
                        Text("COLLECTION")
                            .foregroundStyle(.white.gradient)
                            .fontWeight(.bold)
                            .padding()
                            .background(Color.F78587)
                            .cornerRadius(1)
                            .font(.title3)
//                        Image(systemName: "arrow.forward.circle")
//                            .resizable()
//                            .frame(width: 80, height: 80)
//                            .foregroundColor(Color.F78587)
                    }
                    .padding()
                }
                .padding()
            }
        }
        .toolbar(.hidden, for: .navigationBar)
    }
}

struct OptionView_Previews: PreviewProvider {
    static var previews: some View {
        OptionView()
    }
}
