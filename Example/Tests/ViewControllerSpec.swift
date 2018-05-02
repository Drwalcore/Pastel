@testable import Pastel_Example
import Nimble
import Nimble_Snapshots
import Quick

class ViewControllerSpec: QuickSpec {
    override func spec() {
        describe("ViewController") {
            var sut: ViewController!

            beforeEach {
                sut = ViewController()
            }

            afterEach {
                sut = nil
            }

            describe("after view was loaded") {
                it("should have valid snapshot") {
                    sut.view.frame = UIScreen.main.bounds
                    expect(sut.view).to(recordDeviceAgnosticSnapshot())
                }
            }
        }
    }
}
