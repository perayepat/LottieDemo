//
// Created for LottieDemo
// by  Stewart Lynch on 2022-12-25
// Using Swift 5.0
// Running on macOS 13.1
// 
// Folllow me on Mastodon: @StewartLynch@iosdev.space
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch

import SwiftUI

struct CelebrationView: View {
    @State private var score = 0
    var body: some View {
        NavigationStack {
            VStack {
                Button("Can I celebrate") {
                    score = score == 5 ? 0 : (score + 1)
                    print(score)
                    if score == 5 {
                        print("Celebrate")
                    } else {
                        print("Not Yet")
                    }
                }
                .buttonStyle(.bordered)
                Text("Score: \(score)")
            }
            .navigationTitle("Celebration")
        }
    }
}

struct CelebrationView_Previews: PreviewProvider {
    static var previews: some View {
        CelebrationView()
    }
}
