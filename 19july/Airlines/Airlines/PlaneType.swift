//
//  PlaneType.swift
//  Airlines
//
//  Created by MacStudent on 2018-07-19.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class planeType{
    private var plane_type_id : String?
    private var plane_type_totalseats : Int?
    
    //default initializer
    init() {
        self.plane_type_id = ""
        self.plane_type_totalseats = 0
    }
    
    //Parameterized initializer
    init(plane_type_id: String, plane_type_totalseats: Int) {
        self.plane_type_id = plane_type_id
        self.plane_type_totalseats = plane_type_totalseats
    }
    
    func displayData() -> String {
        var returnData = ""
        
        if self.plane_type_id != nil {
            returnData += "Plane type : \(self.plane_type_id ?? "A101")"
        }
     
        if self.plane_type_totalseats != nil {
            returnData += "Plane type total seats : \(self.plane_type_totalseats ?? 0)"
        }
        
        return returnData
    }
    
}
