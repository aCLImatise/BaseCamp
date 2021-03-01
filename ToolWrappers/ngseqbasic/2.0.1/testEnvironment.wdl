version 1.0

task TestEnvironment {
  command <<<
    testEnvironment
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}