//
//  ContentView.swift
//  einvoicecarrier
//
//  Created by Eric C on 2023/10/9.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            EinvoiceBarcodeView()
            // change einvoice code
            Text("/EINVOICEBARCODE")
                .textSelection(.enabled)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
