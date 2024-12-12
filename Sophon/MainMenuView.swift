//
//  MainMenuView.swift
//  Sophon
//
//  Created by Rezzan Tekinsen on 12/12/24.
//

import SwiftUI

struct MainMenuView: View {
    @State private var offset: CGFloat = 0
    var body: some View {
        VStack {

            Text("Body Health")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
                .offset(x: offset)
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.bt1)
                .frame(width: 283, height: 114)

                
            Text("Soul Health")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.bt1)
                .frame(width: 283, height: 114)
            
            Text("Mind Health")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.bt1)
                .frame(width: 283, height: 114)
        }
    }
}
#Preview {
    MainMenuView()
}
