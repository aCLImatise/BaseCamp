version 1.0

task SonLibTests {
  command <<<
    sonLibTests
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}