//
//  DiaryViewModel.swift
//  SwiftUI_DiarySample
//
//  Created by Chung Wussup on 3/31/24.
//

import Foundation
import SwiftUI
import Combine

final class DiaryViewModel: ObservableObject {
    
    @Published var date: Date = Date()
    @Published var isPresented: Binding<Bool>
    
    var subscriptions = Set<AnyCancellable>()
    
    init(isPresented: Binding<Bool>) {
        self.isPresented = isPresented
        
        $date.sink { date in
            print(date)
        }.store(in: &subscriptions)
    }
    
}
