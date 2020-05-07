//
//  ContentView.swift
//  MaskDetector
//
//  Created by Csaba Szigeti on 2020. 05. 07..
//  Copyright © 2020. Csaba Szigeti. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                MyViewController()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
