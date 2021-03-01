version 1.0

task Codcopy {
  command <<<
    codcopy
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}