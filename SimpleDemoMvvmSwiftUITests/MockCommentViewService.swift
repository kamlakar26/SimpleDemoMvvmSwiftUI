//
//  MockCommentViewService.swift
//  SimpleDemoMvvmSwiftUITests
//
//  Created by Kamlakar Shimpi on 17/06/24.
//

import Foundation
@testable import SimpleDemoMvvmSwiftUI

class MockCommentViewService: CommentViewServiceDelegate {
    
    
    var result: Result<[SimpleDemoMvvmSwiftUI.CommentModel]?, SimpleDemoMvvmSwiftUI.DemoError>!
   
    func getComments(completion: @escaping (Result<[SimpleDemoMvvmSwiftUI.CommentModel]?, SimpleDemoMvvmSwiftUI.DemoError>) -> Void) {
        completion(result)
    }

    func comments() -> [CommentModel]? {
        do {
            guard let fileUrl =  Bundle.main.url(forResource: "Comments", withExtension: "json") else {
                return nil
            }
            let data = try Data(contentsOf: fileUrl)
            return try JSONDecoder().decode([CommentModel].self, from: data)
        } catch _ {
            return nil
        }
    }
    
}
