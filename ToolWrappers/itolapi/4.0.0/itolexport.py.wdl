version 1.0

task Itolexportpy {
  command <<<
    itolexport_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}