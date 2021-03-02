version 1.0

task StCafTests {
  command <<<
    stCafTests
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}