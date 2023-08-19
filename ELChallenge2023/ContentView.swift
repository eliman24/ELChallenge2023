//
//  ContentView.swift
//  ELChallenge2023
//
//  Created by Elisabeth Manalo on 8/18/23.
//

import SwiftUI

struct ContentView: View {
    @State private var page: Int = 0
    @State private var isBack = false   // << reverse flag (not animatable)
    
    @State private var isTextVisible = false
    @State private var isArrowVisible = false
    @State private var timer: Timer?
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("estee22bg")
                    .resizable()
                    .frame(width: 394.0, height: 852.0)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    if page == 0 {
                        Spacer()
                        Text("A beautiful balance of essential nutrients skin craves")
                            .modifier(introText())
                        Button(action: {
                            self.page = self.page + 1
                        }) {}
                        .buttonStyle(ArrowButton())
                        .padding()
                        .padding()
                    } else if page == 1 {
                        Spacer()
                        Text("Featuring a conscious combination of naturally derived ingredients with skin-essential nutrients")
                            .modifier(introText())
                            .padding()
                        Button(action: {
                            self.page = self.page + 1
                        }) {}
                        .buttonStyle(ArrowButton())
                        .padding()
                        .padding()
                    } else if page == 2 {
                        Text("So grumpy skin feels Blissful, Balanced, Loved")
                            .modifier(introText())
                            .padding()
                        Image(systemName: "suit.heart.fill")
                            .resizable()
                            .frame(width: 70.0, height: 66.0)
                            .foregroundColor(.white)
                            .padding()
                        if isArrowVisible {
                            NavigationLink(destination: OptionView()) {
                                Image(systemName: "arrow.forward.circle")
                                    .resizable()
                                    .frame(width: 80.0, height: 80.0)
                                    .foregroundColor(.white)
                            }
                            .opacity(isArrowVisible ? 1 : 0)
                            .animation(.easeIn, value: 50.0)
                        }
                    }
                }
                .transition(AnyTransition.asymmetric(
                    insertion:.move(edge: isBack ? .leading : .trailing),
                    removal: .move(edge: isBack ? .trailing : .leading))
                )
                .animation(.default, value: self.page)   // << animate here by value
                .padding()
            }
        }
        .onAppear {
            startDelays()
        }
        .onDisappear {
            stopDelays()
        }
    }
    
    func startDelays() {
        startTextDelay()
        startArrowDelay()
    }
    
    func startTextDelay() {
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: false) { _ in
            showText()
        }
    }
    
    func startArrowDelay() {
        timer = Timer.scheduledTimer(withTimeInterval: 3, repeats: false) { _ in
            showArrow()
        }
    }
    
    func stopDelays() {
        timer?.invalidate()
        timer = nil
    }
    
    func showText() {
        isTextVisible = true
    }
    
    func showArrow() {
        isArrowVisible = true
    }
}

struct introText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .fontWeight(.semibold)
            .animation(.easeInOut, value: 8.0)
            .font(.largeTitle)
            .multilineTextAlignment(.center)
            .foregroundColor(.white)
    }
}

struct ArrowButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
        Image(systemName: "arrow.forward.circle.fill")
            .resizable()
            .frame(width: 90.0, height: 90.0)
            .foregroundColor(.white)
    }
}

extension Color {
    static let LD9934 = Color("LD9934")
    static let C1BE61 = Color("C1BE61")
    static let C67862 = Color("C67862")
    static let D0CB83 = Color("D0CB83")
    static let D3B6A5 = Color("D3B6A5")
    static let EAB9C5 = Color("EAB9C5")
    static let F3C3CE = Color("F3C3CE")
    static let F7D9E1 = Color("F7D9E1")
    static let F8D1D6 = Color("F8D1D6")
    static let F78587 = Color("F78587")
    static let F2E7E8 = Color("F2E7E8")
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
