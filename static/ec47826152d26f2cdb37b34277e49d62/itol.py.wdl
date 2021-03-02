version 1.0

task Itolpy {
  command <<<
    itol_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}