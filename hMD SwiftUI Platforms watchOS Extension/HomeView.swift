//
//  HomeView.swift
//  hMD SwiftUI Platforms watchOS Extension
//
//  Created by Thomas Sillmann on 11.11.19.
//  Copyright © 2019 Thomas Sillmann. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        VacationListView(vacations: testVacations) { WatchVacationDetailView(vacation: $0) }
    }
    
}

struct HomeView_Previews: PreviewProvider {
    
    static var previews: some View {
        HomeView()
    }
    
}
