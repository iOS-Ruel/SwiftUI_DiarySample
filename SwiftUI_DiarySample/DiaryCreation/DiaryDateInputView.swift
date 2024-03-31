//
//  DiaryDateInputView.swift
//  SwiftUI_DiarySample
//
//  Created by Chung Wussup on 3/31/24.
//

import SwiftUI

struct DiaryDateInputView: View {
        
    @StateObject var vm: DiaryViewModel
    
    var body: some View {
        
        VStack {
            
            DatePicker("Start Date",
                       selection: $vm.date,
                       displayedComponents: [.date])
                .datePickerStyle(.graphical)
            
            
        }
        
    }
}

#Preview {

     DiaryDateInputView(vm: DiaryViewModel(isPresented: .constant(false)))
}
