
import UIKit
import SnapKit


class StudentTableViewController: UITableViewController {
    
    
    var students: [Student] = [
        Student(name: "haya", GPA: 767, ProfileImage: "flower"),
        Student(name: "amal", GPA: 46, ProfileImage: "Rose")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let stu = students[indexPath.row]
        cell.textLabel?.text = "Student: \(stu.name) - GPA: \(stu.GPA) - profile image: \(stu.ProfileImage)"
        cell.imageView?.image = UIImage(named: stu.ProfileImage)
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = DetailViewController()
        let selectedStudent = students[indexPath.row]
        detailVC.student = selectedStudent
        
        navigationController?.pushViewController(detailVC, animated: true)
        
    }
    
}
