version 1.0

task Codcopy {
  command <<<
    _codcopy
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}