//
//  FeedingPlan.swift
//  BoneAppetit
//
//  Created by Steven Xia on 2026/2/27.
//

import SwiftUI

struct FeedingPlan: View {
    let plannedTime: String
    let plannedFood: String
    let plannedAmount: String
    let dailyOrAnnually: String
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text(plannedTime)
                    .font(.title3)
                    .bold()
                Text(dailyOrAnnually)
            }
            Spacer()
            VStack(alignment: .trailing){
                Text(plannedFood)
                    .font(.title3)
                    .bold()
                Text(plannedAmount)
            }
        }
        .padding()
        .border(.black)
    }
}

#Preview {
    FeedingPlan(plannedTime: "7AM", plannedFood: "Kibble", plannedAmount: "2 scoops", dailyOrAnnually: "daily")
}
