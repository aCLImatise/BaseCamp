version 1.0

task Pyphlanpy {
  command <<<
    pyphlan_py
  >>>
  output {
    File out_stdout = stdout()
  }
}