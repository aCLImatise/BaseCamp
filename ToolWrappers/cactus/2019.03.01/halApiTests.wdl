version 1.0

task HalApiTests {
  command <<<
    halApiTests
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}