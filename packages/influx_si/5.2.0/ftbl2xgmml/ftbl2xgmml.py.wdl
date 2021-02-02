version 1.0

task Ftbl2xgmmlpy {
  command <<<
    ftbl2xgmml_py
  >>>
  output {
    File out_stdout = stdout()
  }
}