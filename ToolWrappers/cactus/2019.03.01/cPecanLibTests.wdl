version 1.0

task CPecanLibTests {
  command <<<
    cPecanLibTests
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}