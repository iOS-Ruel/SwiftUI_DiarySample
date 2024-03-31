//
//  DiaryListViewModel.swift
//  SwiftUI_DiarySample
//
//  Created by Chung Wussup on 3/31/24.
//

import Foundation


final class DiaryListViewModel: ObservableObject {
    
    @Published var list: [MoodDiary] = MoodDiary.list
    @Published var dic: [String : [MoodDiary]] = [:]
    
    init() {
        self.dic = Dictionary(grouping: self.list, by: { $0.monthlyIdentifier } )
    }
    
    //dic의 key
    var keys: [String] {
        return dic.keys.sorted{ $0 < $1 }
    }
    
}
