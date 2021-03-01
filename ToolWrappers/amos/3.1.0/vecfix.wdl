version 1.0

task Vecfix {
  command <<<
    vecfix
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}