//
//  EinvoiceBarcodeView.swift
//  einvoicecarrier
//
//  Created by Eric C on 2023/10/15.
//

import SwiftUI

struct EinvoiceBarcodeView: View {
    var body: some View {
        Image("einvoiceBarcode")
            .resizable()
            .scaledToFit()
    }
}

#Preview {
    EinvoiceBarcodeView()
}
