version 1.0

task Itolexportpy {
  command <<<
    itolexport_py
  >>>
  output {
    File out_stdout = stdout()
  }
}