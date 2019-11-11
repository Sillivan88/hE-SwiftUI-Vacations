//
//  WatchVacationDetailView.swift
//  hMD SwiftUI Platforms watchOS Extension
//
//  Created by Thomas Sillmann on 11.11.19.
//  Copyright © 2019 Thomas Sillmann. All rights reserved.
//

import SwiftUI

struct WatchVacationDetailView: View {
    
    let vacation: Vacation
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(vacation.title)
                .resizable()
                .scaledToFit()
                .navigationBarTitle(vacation.title)
            Text(vacation.moment)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
    }
    
}

struct WatchVacationDetailView_Previews: PreviewProvider {
    
    static var previews: some View {
        WatchVacationDetailView(vacation: testVacations[0])
    }
    
}
