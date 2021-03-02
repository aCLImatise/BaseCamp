version 1.0

task HalLiftoverTests {
  command <<<
    halLiftoverTests
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}