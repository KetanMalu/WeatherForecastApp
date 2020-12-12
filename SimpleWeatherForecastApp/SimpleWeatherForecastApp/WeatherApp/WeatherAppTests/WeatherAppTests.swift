
import XCTest
@testable import WeatherApp

class WeatherAppTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testWeatherModel() {
      
        let sutWI = WeatherInfo(temp: 100.0, min_temp: 10.0, max_temp: 100.0, description: "Sunny", icon: "test", time: "10.10")
        XCTAssertNotNil(sutWI, "Model not inititalized")
      
        
        let sut = ForecastTemperature(weekDay: "Monday", hourlyForecast: [sutWI])
        XCTAssertNotNil(sut, "Model not inititalized with info")
    }
    
}
