//
//  EndingViewController.swift
//  Umbba-iOS
//
//  Created by 고아라 on 2023/08/25.
//

import UIKit

import SafariServices

final class EndingViewController: UIViewController {
    private let endingView = EndingView()
    
    override func loadView() {
        super.loadView()
        self.view = endingView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setDelegate()
    }
}

private extension EndingViewController {
    func setDelegate() {
        endingView.endingDelegate = self
    }
}

extension EndingViewController: EndingDelegate {
    func surveyButtonTapped() {
        if let url = URL(string: I18N.Setting.urlArray[3]) {
            let safariViewController = SFSafariViewController(url: url)
            present(safariViewController, animated: true, completion: nil)
        }
    }
    
    func endButtonTapped() {
        self.navigationController?.pushViewController(AccountViewController(), animated: false)
    }
    
    func exitButtonTapped() {
        self.dismiss(animated: false)
    }
}
