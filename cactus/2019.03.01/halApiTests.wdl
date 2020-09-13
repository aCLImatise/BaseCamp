version 1.0

task HalApiTests {
  command <<<
    halApiTests
  >>>
  output {
    File out_stdout = stdout()
  }
}