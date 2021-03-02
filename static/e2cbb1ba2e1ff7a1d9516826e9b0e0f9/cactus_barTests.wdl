version 1.0

task CactusBarTests {
  command <<<
    cactus_barTests
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}