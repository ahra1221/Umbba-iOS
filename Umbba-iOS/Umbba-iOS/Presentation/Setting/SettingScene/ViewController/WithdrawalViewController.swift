//
//  CancelViewController.swift
//  Umbba-iOS
//
//  Created by 남유진 on 2023/07/13.
//

import UIKit

class WithdrawalViewController: UIViewController {
    
    // MARK: - UI Components
    
    private let withdrawalView = WithdrawalView()
    
    // MARK: - Life Cycles
    
    override func loadView() {
        super.loadView()
        view = withdrawalView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setDelegate()
    }
}

// MARK: - Extensions

private extension WithdrawalViewController {
    
    func setDelegate() {
        withdrawalView.navigationdelegate = self
        withdrawalView.withdrawldelegate = self
    }
}

extension WithdrawalViewController: NavigationBarDelegate {
    
    func backButtonTapped() {
        self.navigationController?.popViewController(animated: true)
    }
    
    func completeButtonTapped() {
    }
    
}

extension WithdrawalViewController: WithdrawlDelegate {
    func withdrawlButtonTapped() {
        self.makeAlert(alertType: .withdrawalAlert) {
            print("회원 탈퇴")
            self.navigationController?.pushViewController(LoginViewController(), animated: true)
        }
    }
}