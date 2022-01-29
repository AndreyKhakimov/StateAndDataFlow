//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 26.01.2022.
//

import Foundation
import SwiftUI
class UserManager: ObservableObject {
    @AppStorage("username") var name = ""
}
