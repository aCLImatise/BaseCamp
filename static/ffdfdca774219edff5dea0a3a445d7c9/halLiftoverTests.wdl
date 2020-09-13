version 1.0

task HalLiftoverTests {
  command <<<
    halLiftoverTests
  >>>
  output {
    File out_stdout = stdout()
  }
}