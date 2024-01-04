//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Sawaiz Naveed on 1/4/24.
//

import SwiftUI

struct BarcodeScannerView: View {
    @State private var scannedCode: String?
    var body: some View {
        NavigationStack {
            VStack {
                ScannerView { code in
                    print("Scanned code: \(code)")
                    scannedCode = code
                }
               // .frame(maxWidth: .infinity, maxHeight: 350)
                
                Spacer().frame(height: 90, alignment: .center)
                Label("Scanned Barcode", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                if let scannedCode = scannedCode {
                    Text("Scanned Code: \(scannedCode)")
                        .bold()
                        .font(.largeTitle)
                        .foregroundStyle(Color .red)
                        .padding()
                }
            }
            .navigationTitle("Barcode Scanner")
        }
    }
}

#Preview {
    BarcodeScannerView()
}
