version 1.0

task Ftbl2xgmml {
  command <<<
    ftbl2xgmml
  >>>
  output {
    File out_stdout = stdout()
  }
}