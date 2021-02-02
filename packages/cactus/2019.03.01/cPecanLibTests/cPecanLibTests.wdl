version 1.0

task CPecanLibTests {
  command <<<
    cPecanLibTests
  >>>
  output {
    File out_stdout = stdout()
  }
}