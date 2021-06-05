//
//  Tip.swift
//  Smuglr
//
//  Created by Jonathan Cindano Mwamba on 05/06/2021.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
