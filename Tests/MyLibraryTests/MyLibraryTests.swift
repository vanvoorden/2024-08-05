import Testing
@testable import MyLibrary

func doSomething(_: Int) async throws {
  
}

@Suite actor Tests {
  let count = 0
}

extension Tests {
  @Test func exampleFails() async throws {
    await #expect {
      try await doSomething(self.count)
    } throws: { _ in
      return true
    }
  }
}
