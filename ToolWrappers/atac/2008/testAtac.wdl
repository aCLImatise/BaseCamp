version 1.0

task TestAtac {
  command <<<
    testAtac
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}