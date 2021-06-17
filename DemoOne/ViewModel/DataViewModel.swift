//
//  DataViewModel.swift
//  DemoOne
//
//  Created by Apple on 15/06/21.
//

import Foundation

class ValueViewModel {
    
    var mutableData = [DataSource]()
    
    var listUsers = DataSource.userValues()
    var listBanner = DataBanner.bannerValues()
    
    init(){
        self.mutableData = listUsers
    }
    
    func updateSearch(searchText: String) {
        guard !searchText.isEmpty  else {
            mutableData = listUsers
            return
        }
        
        mutableData.removeAll()
        
        listUsers.forEach {
            if $0.name.contains(searchText) {
                mutableData.append($0)
            }
        }
    }
}
