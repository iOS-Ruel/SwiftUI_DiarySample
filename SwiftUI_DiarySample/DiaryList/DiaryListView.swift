//
//  DiaryListView.swift
//  SwiftUI_DiarySample
//
//  Created by Chung Wussup on 3/31/24.
//

import SwiftUI

struct DiaryListView: View {
    //월별로 섹션을 나눔
    
    @StateObject var vm: DiaryListViewModel
    
    let layout:[GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
         ]
    
    var body: some View {
        LazyVGrid(columns:layout) {
            
            
            ForEach(vm.keys, id: \.self) { key in
                Section {
                    let items = vm.dic[key] ?? []
                    let orderedItems = items.sorted(by: {$0.date<$1.date})
                    
                    ForEach(orderedItems) { item in
                        MoodDiaryCell(diary: item)
                            .frame(height: 50)
                    }
                    
                } header: {
                    Text(key)
                }

                
            }
        }
        
            
    }
}

#Preview {
    DiaryListView(vm: DiaryListViewModel())
}
