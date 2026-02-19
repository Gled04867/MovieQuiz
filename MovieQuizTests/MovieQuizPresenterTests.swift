import XCTest
@testable import MovieQuiz

final class MovieQuizControllerMock: MovieQuizViewControllerProtocol {
    func show(quiz step: QuizStepViewModel) {
        
    }
    
    func show(quiz result: QuizResultsViewModel) {
        
    }
    
    func highlightImageBorder(isCorrectAnswer: Bool) {
        
    }
    
    func showLoadingIndicator() {
        
    }
    
    func hideLoadingIndicator() {
        
    }
    
    func enableButtonsTap(isEnable: Bool) {
        
    }
    
    func setupUI() {
        
    }
    
    func setupDependecies() {
        
    }
    
    func showNetworkError(message: String) {
        
    }
}


final class MovieQuizPresenterTests: XCTestCase {
    func testPresenterConvertModel() throws {
        let viewControllerMock = MovieQuizControllerMock()
        let sut = MovieQuizPresenter(viewController: viewControllerMock)
        
        let emptyData = Data()
        let question = QuizQuestion(image: emptyData, text: "Question text", correctAnswer: true)
        let viewModel = sut.convert(model: question)
        
        XCTAssertNotEqual(viewModel.image, nil)
        XCTAssertEqual(viewModel.question, "Question text")
        XCTAssertEqual(viewModel.questionNumber, "1/10")
        
    }
}
