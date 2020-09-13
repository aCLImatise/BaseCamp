version 1.0

task Suppapy {
  command <<<
    suppa_py
  >>>
  output {
    File out_stdout = stdout()
  }
}