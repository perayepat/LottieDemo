import SwiftUI

struct CelebrationView: View {
    @State private var score = 0
    @State private var play = false
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Button("Can I celebrate") {
                        score = score == 5 ? 0 : (score + 1)
                        print(score)
                        if score == 5 {
                            play = true
                            print("Celebrate")
                        }
                    }
                    .buttonStyle(.bordered)
                    Text("Score: \(score)")
                }
                .navigationTitle("Celebration")
                LottiePlusView(name: Constants.confetti,
                               animationSpeed: 2,
                               contentMode: .scaleAspectFill,
                               play: $play)
                    .id(score)
                    .allowsHitTesting(false)
            }
            .ignoresSafeArea()
        }
    }
}

struct CelebrationView_Previews: PreviewProvider {
    static var previews: some View {
        CelebrationView()
    }
}
