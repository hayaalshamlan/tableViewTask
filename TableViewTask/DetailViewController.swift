

import UIKit
import SnapKit

class DetailViewController: UIViewController {
    
    var student: Student?
    
    private let nameLabel = UILabel()
    private let GPALabel = UILabel()
    private let ProfileImageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(nameLabel)
        view.addSubview(GPALabel)
        view.addSubview(ProfileImageView)
        
        setupViews()
        setupLayout()
        configureWithStudents()
    }
    
    private func setupViews(){
        view.backgroundColor = .white
        
        nameLabel.font = .systemFont(ofSize: 16, weight: .medium)
        GPALabel.font = .systemFont(ofSize: 16, weight: .medium)
        ProfileImageView.image = UIImage(named: "ProfileImage")
    }
    
    private func setupLayout(){
        ProfileImageView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(20)
            make.centerX.equalToSuperview()
            make.width.height.equalTo(100)
        }
        nameLabel.snp.makeConstraints { make in
            make.top.equalTo(ProfileImageView.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
        }
        GPALabel.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
        }
    }
    
    private func configureWithStudents(){
        nameLabel.text = "Student label: \(student?.name ?? "Empty")"
        GPALabel.text = "\(student?.GPA ?? 0)"
        ProfileImageView.image = UIImage(named: student?.ProfileImage ?? "")
    }
}
