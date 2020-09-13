version 1.0

task HalMafTests {
  command <<<
    halMafTests
  >>>
  output {
    File out_stdout = stdout()
  }
}