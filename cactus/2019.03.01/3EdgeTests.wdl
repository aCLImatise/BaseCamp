version 1.0

task EdgeTests {
  command <<<
    _EdgeTests
  >>>
  output {
    File out_stdout = stdout()
  }
}