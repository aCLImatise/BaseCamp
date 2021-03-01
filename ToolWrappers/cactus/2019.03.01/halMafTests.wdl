version 1.0

task HalMafTests {
  command <<<
    halMafTests
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}