version 1.0

task HalChainTests {
  command <<<
    halChainTests
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}