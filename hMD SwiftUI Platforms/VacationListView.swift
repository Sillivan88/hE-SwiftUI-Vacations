//
//  VacationListView.swift
//  hMD SwiftUI Platforms
//
//  Created by Thomas Sillmann on 11.11.19.
//  Copyright © 2019 Thomas Sillmann. All rights reserved.
//

import SwiftUI

struct VacationListView<DetailView: View>: View {
    
    let vacations: [Vacation]
    
    let detailViewProducer: (Vacation) -> DetailView
    
    var body: some View {
        List(vacations) { vacation in
            NavigationLink(destination: self.detailViewProducer(vacation)) {
                VacationListCell(vacation: vacation)
            }
        }
        .navigationBarTitle("Vacations")
    }
    
}

struct VacationListCell: View {
    
    let vacation: Vacation
    
    var body: some View {
        HStack {
            Image(vacation.title)
                .resizable()
                .scaledToFit()
                .frame(height: 50.0)
            VStack(alignment: .leading) {
                Text(vacation.title)
                Text(vacation.moment)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
    
}

#if os(watchOS)
typealias PreviewVacationDetailView = WatchVacationDetailView
#else
typealias PreviewVacationDetailView = VacationDetailView
#endif

struct VactionListView_Previews: PreviewProvider {
    
    static var previews: some View {
        VacationListView(vacations: testVacations) { PreviewVacationDetailView(vacation: $0) }
    }
    
}
