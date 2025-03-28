//
//  TRICARE_WestUITestsLaunchTests.swift
//  TRICARE WestUITests
//
//  Created by Bryan Marosch on 1/14/25.
//

import XCTest

final class TRICARE_WestUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    @MainActor
    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "LaunchScreen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
