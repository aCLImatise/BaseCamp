version 1.0

task GetUniqueProteinOpy {
  command <<<
    getUniqueProtein_o_py
  >>>
  output {
    File out_stdout = stdout()
  }
}