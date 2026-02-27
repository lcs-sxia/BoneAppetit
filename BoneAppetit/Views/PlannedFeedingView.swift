//
//  PlannedFeedingView.swift
//  BoneAppetit
//
//  Created by Steven Xia on 2026/2/27.
//

import SwiftUI

struct PlannedFeedingView: View {
    @State private var selection = "Planned Feeding"
    var body: some View {
        NavigationStack{
            VStack {
                Picker("Current Selection", selection: $selection){
                    Text("Meals").tag("Meals")
                    Text("Planned Feeding").tag("Planned Feeding")
                    Text("History").tag("History")
                }
                .pickerStyle(.segmented)
                FeedingPlan(plannedTime: "7AM", plannedFood: "Kibble", plannedAmount: "2 scoops", dailyOrAnnually: "daily")
                FeedingPlan(plannedTime: "7AM", plannedFood: "Kibble", plannedAmount: "2 scoops", dailyOrAnnually: "daily")
                FeedingPlan(plannedTime: "7AM", plannedFood: "Kibble", plannedAmount: "2 scoops", dailyOrAnnually: "daily")
                FeedingPlan(plannedTime: "7AM", plannedFood: "Kibble", plannedAmount: "2 scoops", dailyOrAnnually: "daily")
                
                Spacer()
                
                .navigationTitle("Planned Feeding")
                .toolbar{
                    ToolbarItem(placement: .topBarLeading){
                        Button{
                            
                        } label:{
                            Text("\(Image(systemName: "chevron.backward")) Pets")
                        }
                    }
                    ToolbarItem(placement: .topBarTrailing){
                        Button{
                            
                        } label:{
                            Image(systemName: "plus")
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    PlannedFeedingView()
}
