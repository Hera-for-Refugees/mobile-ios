//
//  LoginProfileView.swift
//  Kybele
//
//  Created by Rufat Mirza on 15.02.2020.
//  Copyright © 2020 Rufat Mirza. All rights reserved.
//

import UIKit

final class LoginProfileView: UIView {

    // MARK: - Declaration
    
    lazy var nameField: TextInputField = .init(type: .name)
    
    lazy var surnameField: TextInputField = .init(type: .surname)
    
    lazy var dateOfBirthField: TextInputField = .init(type: .smsCode)
    
    lazy var addressField: TextInputField = .init(type: .address)

    lazy var button = UIButton.make(backgroundColor: .kybelePurple,
                                    title: "Continue".localized(),
                                    titleColor: .white,
                                    font: UIFont.boldSystemFont(ofSize: 20),
                                    cornerRadius: 24)

    // MARK: - Setup

    init() {
        super.init(frame: .zero)
        backgroundColor = .kybeleLightPurple

        let mainStack = UIStackView(arrangedSubviews: [nameField,
                                                       surnameField,
                                                       dateOfBirthField,
                                                       addressField])
        mainStack.spacing = 40
        mainStack.axis = .vertical

        addSubviews([mainStack, button])

        mainStack.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview().inset(16)
            $0.top.equalTo(safeAreaLayoutGuide.snp.topMargin).inset(24)
        }

        button.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview().inset(16)
            $0.bottom.equalTo(safeAreaLayoutGuide.snp.bottom).inset(16)
            $0.height.equalTo(48)
        }
        button.enableShadow()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
