//
//  InstructionsViewController.swift
//  MiniProject
//
//  Created by Mubarak Aloraifan on 29/02/2024.
//

import UIKit
import SnapKit

class InstructionsViewController: UIViewController {
    
    
    let textLabel = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupAutoLayout()
        title = "Instructions"
    }
    
    func setupUI() {
        view.backgroundColor = .systemOrange
        
        textLabel.text = """
        A work instruction is a written document that provides clear and precise steps to carry out a single instruction.
        Work instructions describe the correct way to perform a certain task or activity. Each task is part of a larger process, so every step must be followed accordingly in order for the task to be performed properly, otherwise it will affect other aspects of the business.
        Work instructions are sometimes called work guides, job aids, or standard operating procedures. However, work instructions actually differ from the three.
        A work instruction is more detailed than a standard operating procedure and it is mandatory, unlike a work guide. Meanwhile, work instructions are just a category under job aids.
        """
        textLabel.numberOfLines = 0
        textLabel.font = .systemFont(ofSize: 15, weight: .bold)
        textLabel.font = UIFont.systemFont(ofSize: 16)
    }
    
    func setupAutoLayout() {
        view.addSubview(textLabel)
        textLabel.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
        }
    }
    
    
}
