version 1.0

task StPinchesAndCactiTests {
  command <<<
    stPinchesAndCactiTests
  >>>
  output {
    File out_stdout = stdout()
  }
}