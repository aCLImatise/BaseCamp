version 1.0

task HalChainTests {
  command <<<
    halChainTests
  >>>
  output {
    File out_stdout = stdout()
  }
}