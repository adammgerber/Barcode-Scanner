//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner
//
//  Created by Adam Gerber on 10/11/22.
//

import SwiftUI
// all models are ObservableObjects
final class BarcodeScannerViewModel: ObservableObject {
    //we replace @State private to @Oublished
    @Published var scannedCode = ""
    @Published var alertItem: AlertItem?
    
    var statusText: String {
        scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode
    }
    
    var statusTextColor: Color {
        scannedCode.isEmpty ? .red : .green
    }
}
