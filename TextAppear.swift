import SwiftUI

struct TextAppear: View {
    @State private var isTextVisible = false
    @State private var timer: Timer?
    
    var body: some View {
        VStack {
            if isTextVisible {
                Text("Hello, SwiftUI!")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                    .opacity(isTextVisible ? 3 : 0)
                    .animation(.easeInOut, value: 0.5)
            }
        }
        .onAppear {
            startTextDelay()
        }
        .onDisappear {
            stopTextDelay()
        }
    }
    
    func showText() {
        isTextVisible = true
    }
    
    func startTextDelay() {
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: false) { _ in
            showText()
        }
    }
    
    func stopTextDelay() {
        timer?.invalidate()
        timer = nil
    }
}

struct TextAppear_Previews: PreviewProvider {
    static var previews: some View {
        TextAppear()
    }
}
