version 1.0

task MatchingAndOrderingTests {
  command <<<
    matchingAndOrderingTests
  >>>
  output {
    File out_stdout = stdout()
  }
}