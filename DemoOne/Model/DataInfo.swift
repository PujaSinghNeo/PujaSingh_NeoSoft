//
//  DataInfo.swift
//  DemoOne
//
//  Created by Apple on 15/06/21.
//

import Foundation

struct DataSource {
    
    var name: String
    var image: String
    
    static func userValues() -> [DataSource] {
        return [DataSource(name: "Play Paper Scissor", image: "1"),
                
                DataSource(name: "Verify your email address use this security code: 5571", image: "2"),
                
                DataSource(name: "Flow layout is a type of collection view layout. Items in the collection view flow from one row or column", image: "3"),
                
                DataSource(name: "Check the interface of this roject", image: "4"),
                
                DataSource(name: "Play Chess Badminton", image: "5"),
                                
                DataSource(name: "Collection view flow from one row or column (depending on)", image: "6"),
                
                DataSource(name: "You can see, there are arrows everywhere, crossing", image: "7"),
                
                DataSource(name: "Play Paper Scissor", image: "1"),
                        
                DataSource(name: "Verify your email address use this security code: 2604", image: "2"),
                        
                DataSource(name: "Flow layout is a type of collection view layout. Items in the collection view flow from one row or column", image: "3"),
                
                DataSource(name: "Check the interface of this roject", image: "4"),
                        
                DataSource(name: "Play Chess Badminton", image: "5"),
                                        
                DataSource(name: "Collection view flow from one row or column (depending on the scrolling)", image: "6") ]
    }
}

struct DataBanner {
    
    var banner: String
    
    static func bannerValues() -> [DataBanner] {
        return [DataBanner(banner: "1"),
                DataBanner(banner: "2"),
                DataBanner(banner: "3"),
                DataBanner(banner: "4"),
                DataBanner(banner: "5"),
                DataBanner(banner: "6"),
                DataBanner(banner: "7")]
    }
}
