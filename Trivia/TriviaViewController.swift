//
//  TriviaViewController.swift
//  Trivia
//
//  Created by Nina Eliza Dizon on 3/12/25.
//

import UIKit

class TriviaViewController: UIViewController {
    @IBOutlet weak var WinningLabel: UILabel!
    var round: Int = 0
    var correct: Int = 0
    
    
    @IBAction func ans4(_ sender: Any) {
        if round == 3{
            correct += 1
            round += 1
        }
        else if round < 4{
            round += 1
        }
        else{
            finishGame()
        }
        if round == 1 {
            gameImage.image = UIImage(named:"GALAGA")
        }
        else if round == 2{
            gameImage.image = UIImage(named: "HALO")
        }
        else if round == 3{
            gameImage.image = UIImage(named: "D2")
        }
        else if round == 4{
            gameImage.image = UIImage(named: "COD")
        }
            
    }
    @IBAction func ans3(_ sender: Any) {
        if round == 4{
            if correct != 4{
                correct += 1
            }
            finishGame()
        }
        else if round < 4{
            round += 1
        }
        if round == 1 {
            gameImage.image = UIImage(named:"GALAGA")
        }
        else if round == 2{
            gameImage.image = UIImage(named: "HALO")
        }
        else if round == 3{
            gameImage.image = UIImage(named: "D2")
        }
        else if round == 4{
            gameImage.image = UIImage(named: "COD")
        }
    }
    @IBAction func ans2(_ sender: Any) {
        if round == 1{
            correct += 1
            round += 1
        }
        else if round < 4{
            round += 1
        }
        else{
            finishGame()
        }
        if round == 1 {
            gameImage.image = UIImage(named:"GALAGA")
        }
        else if round == 2{
            gameImage.image = UIImage(named: "HALO")
        }
        else if round == 3{
            gameImage.image = UIImage(named: "D2")
        }
        else if round == 4{
            gameImage.image = UIImage(named: "COD")
        }
    }
    @IBAction func Ans1(_ sender: Any) {
        if round == 2{
            correct += 1
            round += 1
        }
        else if round < 4{
            round += 1
        }
        else{
            finishGame()
        }
        if round == 1 {
            gameImage.image = UIImage(named:"GALAGA")
        }
        else if round == 2{
            gameImage.image = UIImage(named: "HALO")
        }
        else if round == 3{
            gameImage.image = UIImage(named: "D2")
        }
        else if round == 4{
            gameImage.image = UIImage(named: "COD")
        }
    }
    @IBOutlet weak var gameQuestion: UILabel!
    @IBOutlet weak var gameImage: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("setting up")
        setUp()
        WinningLabel.layer.opacity = 0.0

        // Do any additional setup after loading the view.
        
    }
    
    func setUp(){
        round = 1
        gameImage.image = UIImage(named: "GALAGA")
    }
    
    func finishGame(){
        WinningLabel.layer.opacity = 1.0
        WinningLabel.text = "you got \(correct)/4 correct"
    }
    
//    func gameStart(){
//        if round == 1 {
//            gameImage.image = UIImage(named:"GALAGA")
//        }
//        else if round == 2{
//            gameImage.image = UIImage(named: "HALO")
//        }
//        else if round == 3{
//            gameImage.image = UIImage(named: "D2")
//        }
//        else if round == 4{
//            gameImage.image = UIImage(named: "COD")
//        }
        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


