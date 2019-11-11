//
//  HostingController.swift
//  hMD SwiftUI Platforms watchOS Extension
//
//  Created by Thomas Sillmann on 11.11.19.
//  Copyright © 2019 Thomas Sillmann. All rights reserved.
//

import WatchKit
import Foundation
import SwiftUI

class HostingController: WKHostingController<HomeView> {
    
    override var body: HomeView {
        return HomeView()
    }
    
}
