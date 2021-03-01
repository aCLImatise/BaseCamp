version 1.0

task Jeprof {
  command <<<
    jeprof
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}