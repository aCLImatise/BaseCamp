version 1.0

task Codcmp {
  command <<<
    _codcmp
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}