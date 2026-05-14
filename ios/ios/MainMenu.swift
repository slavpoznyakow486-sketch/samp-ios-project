import UIKit

class MainMenu: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .black

        let title = UILabel()
        title.text = "SAMP MOBILE"
        title.textColor = .white
        title.font = UIFont.boldSystemFont(ofSize: 32)
        title.translatesAutoresizingMaskIntoConstraints = false

        let button = UIButton(type: .system)
        button.setTitle("CONNECT", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
        button.tintColor = .green
        button.translatesAutoresizingMaskIntoConstraints = false

        button.addTarget(self, action: #selector(startGame), for: .touchUpInside)

        view.addSubview(title)
        view.addSubview(button)

        NSLayoutConstraint.activate([
            title.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            title.topAnchor.constraint(equalTo: view.topAnchor, constant: 140),

            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    @objc func startGame() {
        let vc = GameViewController()
        present(vc, animated: true)
    }
}
