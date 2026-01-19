import Foundation

struct GameResult {
    let correct: Int
    let total: Int
    let date: Date
    
    func isBetter(answer: GameResult) -> Bool {
        correct > answer.correct
    }
}
