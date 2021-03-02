version 1.0

task Dreg {
  command <<<
    _dreg
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}