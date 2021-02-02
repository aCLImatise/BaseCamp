version 1.0

task ProtpredGromacsMono {
  command <<<
    protpred_Gromacs_Mono
  >>>
  output {
    File out_stdout = stdout()
  }
}