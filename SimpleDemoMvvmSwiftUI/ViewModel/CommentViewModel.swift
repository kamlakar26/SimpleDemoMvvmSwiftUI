//
//  CommentViewModel.swift
//  SimpleDemoMvvmSwiftUI
//
//  Created by Kamlakar Shimpi on 17/06/24.
//

import Foundation
import Combine

class CommentViewModel: ObservableObject {
    private let commentViewServices: CommentViewServiceDelegate
    
    init(commentViewServices: CommentViewServiceDelegate = CommentViewService()) {
        self.commentViewServices = commentViewServices
    }
    
    @Published var comments = [CommentModel]()
    
    func fetchComments() {
        commentViewServices.getComments {[weak self] result in
            switch result {
            case .success(let comments):
                self?.comments = comments ?? []
            case .failure(let error):
                print(error)
            }
        }
    }
}
