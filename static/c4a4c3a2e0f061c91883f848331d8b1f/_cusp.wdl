version 1.0

task Cusp {
  command <<<
    _cusp
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}