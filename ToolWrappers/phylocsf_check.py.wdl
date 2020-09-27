version 1.0

task PhylocsfCheckpy {
  command <<<
    phylocsf_check_py
  >>>
  output {
    File out_stdout = stdout()
  }
}