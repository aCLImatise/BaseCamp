version 1.0

task Itolpy {
  command <<<
    itol_py
  >>>
  output {
    File out_stdout = stdout()
  }
}