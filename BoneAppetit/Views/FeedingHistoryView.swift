//
//  ContentView.swift
//  BoneAppetit
//
//  Created by Steven Xia on 2026/2/27.
//

import SwiftUI

struct FeedingHistoryView: View {
    @State private var selection = "History"
    var body: some View {
        NavigationStack{
            VStack {
                Picker("Current Selection", selection: $selection){
                    Text("Meals").tag("Meals")
                    Text("Planned Feeding").tag("Planned Feeding")
                    Text("History").tag("History")
                }
                .pickerStyle(.segmented)
                
                HStack{
                    VStack(alignment: .leading){
                        Text("7 AM")
                            .font(.title3)
                            .bold()
                        Text("Kibble, 1.5 scoops")
                    }
                    Spacer()
                    VStack(alignment: .trailing){
                        Text("\(Image(systemName: "checkmark.circle.fill"))")
                            .foregroundStyle(.green)
                        Text("Russ, at 9 AM")
                    }
                }
                .padding()
                .border(.black)
                Spacer()
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
}

#Preview {
    FeedingHistoryView()
}
