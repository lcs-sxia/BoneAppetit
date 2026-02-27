//
//  FeedingView.swift
//  BoneAppetit
//
//  Created by Steven Xia on 2026/2/27.
//

import SwiftUI

struct FeedingView: View {
    let schduledTime: String
    let foodAndAmount: String
    let personAndActualTime: String
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text(schduledTime)
                    .font(.title3)
                    .bold()
                Text(foodAndAmount)
            }
            Spacer()
            VStack(alignment: .trailing){
                Text("\(Image(systemName: "checkmark.circle.fill"))")
                    .foregroundStyle(.green)
                Text(personAndActualTime)
            }
        }
        .padding()
        .border(.black)
    }
}

#Preview {
    FeedingView(
        schduledTime: "11 AM", foodAndAmount: "Kibble, 1.5 scoops", personAndActualTime: "Russ, at 7:31 AM"
    )
}
