//
//  ViewController.swift
//  BTVNBuoi5UI
//
//  Created by Trần Văn Cam on 06/10/2022.
//

import UIKit

class ViewController: UIViewController {

    let textLabel: UILabel = {
        let label = UILabel()
        label.text = "Title label"
        label.textColor = UIColor.white
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 30, weight: .bold)
        return label
    }()
    
    let mailTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = UIColor.gray.withAlphaComponent(0.4)
        textField.font = .systemFont(ofSize: 18, weight: .bold)
        textField.attributedPlaceholder = NSAttributedString(string: "Enter your mail", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        textField.textColor = UIColor.white
        return textField
    } ()
    
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = UIColor.gray.withAlphaComponent(0.4)
        textField.font = .systemFont(ofSize: 18, weight: .bold)
        textField.attributedPlaceholder = NSAttributedString(string: "Enter your password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        textField.isSecureTextEntry = true
        return textField
    } ()
    
    let contentTextView: UITextView = {
        let textView = UITextView()
        textView.textColor = UIColor.white
        textView.textAlignment = .left
        textView.backgroundColor = .purple.withAlphaComponent(0.5)
        textView.font = .systemFont(ofSize: 20)
        textView.text = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
        return textView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        addNewView()
    }

    
    func addNewView() {
        let greenView = UIView()
        greenView.frame = CGRect(x: 0, y: 50, width: UIScreen.main.bounds.width, height: 140)
        greenView.backgroundColor = UIColor.green.withAlphaComponent(0.8)
        view.addSubview(greenView)
        
        let cyanView = UIView()
        cyanView.frame = CGRect(x: 0, y: greenView.frame.minY + greenView.frame.height, width: UIScreen.main.bounds.width, height: 120)
        cyanView.backgroundColor = UIColor.systemTeal.withAlphaComponent(0.5)
        view.addSubview(cyanView)
        
        
        let purpleView = UIView()
        purpleView.frame = CGRect(x: 0, y: UIScreen.main.bounds.height - 200 - 20, width: UIScreen.main.bounds.width, height: 200)
        //purpleView.backgroundColor = UIColor.purple.withAlphaComponent(0.5)
        view.addSubview(purpleView)
        
        view.addSubview(contentTextView)
        contentTextView.frame = purpleView.frame
        
        view.addSubview(textLabel)
        textLabel.frame = .init(x: 0, y: greenView.frame.maxY / 2, width: 200, height: 50)
        textLabel.center.x = view.center.x
        
        
        view.addSubview(mailTextField)
        mailTextField.frame = .init(x: 0, y: 0, width: 350, height: 60)
        mailTextField.center.x = view.center.x
        mailTextField.center.y = view.center.y - 20
        
        view.addSubview(passwordTextField)
        passwordTextField.frame = .init(x: 0, y: 0, width: 350, height: 60)
        passwordTextField.center.x = view.center.x
        passwordTextField.center.y = view.center.y + 60
        
        
    }

}

