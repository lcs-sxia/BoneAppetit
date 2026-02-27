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
                
                FeedingView(schduledTime: "7 AM", foodAndAmount: "Kibble, 1.5 scoops", personAndActualTime: "Russ, at 9:41 AM")
                FeedingView(schduledTime: "7 AM", foodAndAmount: "Kibble, 1.5 scoops", personAndActualTime: "Russ, at 9:41 AM")
                FeedingView(schduledTime: "7 AM", foodAndAmount: "Kibble, 1.5 scoops", personAndActualTime: "Russ, at 9:41 AM")
                FeedingView(schduledTime: "7 AM", foodAndAmount: "Kibble, 1.5 scoops", personAndActualTime: "Russ, at 9:41 AM")
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
