version 1.0

task StPinchesAndCactiTests {
  command <<<
    stPinchesAndCactiTests
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}