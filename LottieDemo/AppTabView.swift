import SwiftUI

struct AppTabView: View {
    var body: some View {
        TabView {
            AddProgressView()
                .tabItem {
                    Label("Progress", systemImage: "hare.fill")
                }
            CelebrationView()
                .tabItem {
                    Label("Celebrate", systemImage: "sun.max.fill")
                }
            LikesView()
                .tabItem {
                    Label("My Likes", systemImage: "heart.fill")
                }
        }
    }
}

struct AppTabView_Previews: PreviewProvider {
    static var previews: some View {
        AppTabView()
    }
}
