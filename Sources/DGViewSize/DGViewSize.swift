// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

public extension View {
    func size(perform action: @escaping (CGSize) -> Void) -> some View {
        self.background(ViewGeometry())
            .onPreferenceChange(ViewSizeKey.self) { size in
                action(size)
            }
    }
}

struct ViewSizeKey: PreferenceKey {
    static let defaultValue: CGSize = .zero

    static func reduce(value: inout CGSize, nextValue: () -> CGSize) {
        value = nextValue()
    }
}

struct ViewGeometry: View {
    var body: some View {
        GeometryReader { geometry in
            Color.clear
                .preference(key: ViewSizeKey.self, value: geometry.size)
        }
    }
}
