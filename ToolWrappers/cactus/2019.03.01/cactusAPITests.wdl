version 1.0

task CactusAPITests {
  command <<<
    cactusAPITests
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}