version 1.0

task EdgeTests {
  command <<<
    _EdgeTests
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}