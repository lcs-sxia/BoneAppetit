//
//  ContentView.swift
//  BoneAppetit
//
//  Created by Steven Xia on 2026/2/27.
//

import SwiftUI

struct FeedingHistoryView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .navigationTitle("Piper")
        .toolbar{
            ToolbarItem(placement: .topBarLeading){
                Button{
                    
                } label:{
                    Text("\(Image(systemName: "chevron.backward")) Pets")
                }
            }
        }
    }
}

#Preview {
    FeedingHistoryView()
}
