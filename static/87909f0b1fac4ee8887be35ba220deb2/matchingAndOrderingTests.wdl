version 1.0

task MatchingAndOrderingTests {
  command <<<
    matchingAndOrderingTests
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}