//
//  ArbitraryKarumiHQs.swift
//  MaxibonKataIOS
//
//  Created by Pedro Vicente Gomez on 29/06/16.
//  Copyright © 2016 GoKarumi. All rights reserved.
//

import Foundation
import SwiftCheck
@testable import MaxibonKataIOS

extension KarumiHQs: Arbitrary {

    public static func create(chat: Chat) -> Gen<KarumiHQs> {
        return Gen<KarumiHQs>.pure(KarumiHQs(chat: chat))
    }

    public static var arbitrary: Gen<KarumiHQs> {
        return create(MockChat())
    }

}