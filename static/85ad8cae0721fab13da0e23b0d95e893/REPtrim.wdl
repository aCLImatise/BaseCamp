version 1.0

task REPtrim {
  command <<<
    REPtrim
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}