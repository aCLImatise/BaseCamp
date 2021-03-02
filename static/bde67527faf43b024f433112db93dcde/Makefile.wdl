version 1.0

task Makefile {
  command <<<
    Makefile
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}