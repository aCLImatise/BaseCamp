version 1.0

task Ctresc03npdb {
  command <<<
    ctresc03n_pdb
  >>>
  output {
    File out_stdout = stdout()
  }
}