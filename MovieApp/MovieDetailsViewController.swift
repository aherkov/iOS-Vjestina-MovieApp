import Foundation
import UIKit

class MovieDetailsViewController: UIViewController {
    
    private var coverImage: UIImageView!
    private var coverStack: UIStackView!
    private var overviewStack: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buildViews()
    }
    
    private func buildViews() {
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        createCover()
        createOverview()
    }
    
    private func createCover() {
        coverImage = UIImageView(image: UIImage(named: "halloween"))
        coverImage.clipsToBounds = true
        coverImage.contentMode = .scaleAspectFill
        coverImage.translatesAutoresizingMaskIntoConstraints = false
        
        coverStack = UIStackView()
        coverStack.axis = .vertical
        coverStack.translatesAutoresizingMaskIntoConstraints = false
        
        let userScoreString = NSMutableAttributedString()
        userScoreString.append(NSAttributedString(string: "76", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white, NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 22)]))
        userScoreString.append(NSAttributedString(string: "%   User Score", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white, NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 18)]))
        let userScore = UILabel()
        userScore.attributedText = userScoreString
        
        let movieTitleString = NSMutableAttributedString()
        movieTitleString.append(NSAttributedString(string: "Halloween ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 30), NSAttributedString.Key.foregroundColor: UIColor.white]))
        movieTitleString.append(NSAttributedString(string: "(1978)", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 32), NSAttributedString.Key.foregroundColor: UIColor.white]))
        let movieTitle = UILabel()
        movieTitle.attributedText = movieTitleString
        
        let releaseDate = UILabel()
        releaseDate.text = "25/10/1978 (US)"
        releaseDate.textColor = .lightGray
        releaseDate.font = UIFont.systemFont(ofSize: 18)
        
        let genreString = NSMutableAttributedString()
        genreString.append(NSAttributedString(string: "Horror, Thriller  ", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray, NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18)]))
        genreString.append(NSAttributedString(string: "1h 31m", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white, NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 18)]))
        let genre = UILabel()
        genre.attributedText = genreString
        
        coverStack.addArrangedSubview(userScore)
        coverStack.addArrangedSubview(movieTitle)
        coverStack.addArrangedSubview(releaseDate)
        coverStack.addArrangedSubview(genre)
        
        view.addSubview(coverImage)
        view.addSubview(coverStack)
        
        NSLayoutConstraint.activate([
            coverImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            coverImage.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor),
            coverImage.heightAnchor.constraint(equalToConstant: 300),
            coverStack.heightAnchor.constraint(equalToConstant: 120),
            coverStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            coverStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            coverStack.bottomAnchor.constraint(equalTo: coverImage.bottomAnchor, constant: -20)
        ])
    }
    
    private func createOverview() {
        overviewStack = UIStackView()
        overviewStack.axis = .vertical
        overviewStack.distribution = .fillProportionally
        overviewStack.translatesAutoresizingMaskIntoConstraints = false
        
        let title = UILabel()
        title.text = "Overview"
        title.font = UIFont.boldSystemFont(ofSize: 28)
        title.textColor = UIColor(red: 0.05, green: 0.15, blue: 0.25, alpha: 1.0)
        
        let description = UILabel()
        description.font = UIFont.systemFont(ofSize: 18)
        description.text = "Fifteen years after murdering his sister on Halloween Night 1963, Michael Myers escapes from a mental hospital and returns to the small town of Haddonfield, Illinois to kill again."
        description.numberOfLines = 0
        overviewStack.addArrangedSubview(title)
        overviewStack.addArrangedSubview(description)
        overviewStack.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(overviewStack)
        
        NSLayoutConstraint.activate([
            overviewStack.topAnchor.constraint(equalTo: coverImage.bottomAnchor, constant: 10),
            overviewStack.heightAnchor.constraint(equalToConstant: 160),
            overviewStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            overviewStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
        ])
    }
}
