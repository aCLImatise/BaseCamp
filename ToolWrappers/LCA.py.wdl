version 1.0

task LCApy {
  command <<<
    LCA_py
  >>>
  output {
    File out_stdout = stdout()
  }
}