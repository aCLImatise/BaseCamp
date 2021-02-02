version 1.0

task CountPepProtpy {
  command <<<
    count_pep_prot_py
  >>>
  output {
    File out_stdout = stdout()
  }
}