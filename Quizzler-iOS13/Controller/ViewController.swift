
 import UIKit

 class ViewController: UIViewController {
    
    @IBOutlet weak var questionLable: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var button1: UIButton!
    
    @IBOutlet weak var button2: UIButton!
    
    @IBOutlet weak var button3: UIButton!
    
    @IBOutlet weak var scoreLable: UILabel!
    
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       updateUI()
    }
    
    @IBAction func answerButtonPress(_ sender: UIButton) {
    
        //MARK: - sending a response to the user
        
        let userAnswer = sender.currentTitle!
        let actualAnswer = quizBrain.checkUnswer(userAnswer)
        
        if actualAnswer {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
         quizBrain.next()
    
        //MARK: - update question, unswers, background color buttons, progresLable, score, with a delay of 2 sec.
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
              
    }
    
    @objc func updateUI() {
        questionLable.text = quizBrain.getQuestion()
        scoreLable.text = "Score:\(quizBrain.getScore())"
        button1.setTitle(quizBrain.firstButton(), for: .normal)
        button2.setTitle(quizBrain.secondButton(), for: .normal)
        button3.setTitle(quizBrain.thirdButton(), for: .normal)
        button1.backgroundColor = UIColor.clear
        button2.backgroundColor = UIColor.clear
        button3.backgroundColor = UIColor.clear
        progressBar.progress = quizBrain.getProgress()
    }
    
    
}

