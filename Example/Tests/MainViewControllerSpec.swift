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
                beforeEach {
                    sut.view.frame = UIScreen.main.bounds
                    sut.viewDidLoad()
                }

                it("should have valid snapshot") {
                    expect(sut.view).to(haveValidDeviceAgnosticSnapshot(named: "InitialPastelFrame"))
                }

                it("should not have matching snapshot after Pastel animation") {
                    expect(sut.view).toEventuallyNot(haveValidDeviceAgnosticSnapshot(named: "InitialPastelFrame"))
                }
            }
        }
    }
}
