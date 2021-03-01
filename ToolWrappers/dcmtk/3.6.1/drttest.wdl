version 1.0

task Drttest {
  command <<<
    drttest
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}