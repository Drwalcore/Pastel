@testable import Pastel_Example
import Nimble
import Nimble_Snapshots
import Quick

class MainViewControllerSpec: QuickSpec {
    override func spec() {
        describe("MainViewController") {
            var sut: MainViewController!

            beforeEach {
                sut = MainViewController()
            }

            afterEach {
                sut = nil
            }

            describe("after view was loaded") {
                it("should have valid snapshot") {
                    sut.view.frame = UIScreen.main.bounds
                    sut.viewDidLoad()

                    expect(sut.view).toEventually(haveValidDeviceAgnosticSnapshot())
                }
            }
        }
    }
}
