//
//  ContentView.swift
//  einvoicecarrier
//
//  Created by Eric C on 2023/10/9.
//

import SwiftUI

struct ContentView: View {
    @State private var showCopiedMessage = false

    var body: some View {
        VStack {
            EinvoiceBarcodeView()
                .onTapGesture {
                    UIPasteboard.general.string = "/8FUOLPQ"
                    showCopiedMessage = true
                }
        }
        .padding()
        .overlay(
            Group {
                if showCopiedMessage {
                    Text("Copied to clipboard!")
                        .padding() // 為文字添加內邊距
                        .background(Color.white) // 添加白色背景
                        .cornerRadius(10) // 圓角
                        .shadow(radius: 5) // 添加陰影讓背景更立體
                        .transition(.opacity) // 添加淡入淡出的過渡效果
                        .onAppear {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1) { // 顯示 1 秒
                                withAnimation {
                                    showCopiedMessage = false
                                }
                            }
                        }
                }
            }
        )
    }
}

#Preview {
    ContentView()
}
