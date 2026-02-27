//
//  Cohorts.swift
//  BoneAppetit
//
//  Created by Steven Xia on 2026/2/27.
//

import SwiftUI

struct Cohorts: View {
    var body: some View {
        NavigationStack{
            VStack{
                
            }
            .navigationTitle("Planned Feeding")
            .toolbar{
                ToolbarItem(placement: .topBarLeading){
                    Button{
                            
                    } label:{
                        Text("sigh out")
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

#Preview {
    Cohorts()
}
