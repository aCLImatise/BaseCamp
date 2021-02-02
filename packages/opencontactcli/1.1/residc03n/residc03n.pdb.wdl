version 1.0

task Residc03npdb {
  command <<<
    residc03n_pdb
  >>>
  output {
    File out_stdout = stdout()
  }
}