version 1.0

task Ftbl2optRpy {
  command <<<
    ftbl2optR_py
  >>>
  output {
    File out_stdout = stdout()
  }
}