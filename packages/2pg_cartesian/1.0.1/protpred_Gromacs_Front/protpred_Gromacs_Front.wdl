version 1.0

task ProtpredGromacsFront {
  command <<<
    protpred_Gromacs_Front
  >>>
  output {
    File out_stdout = stdout()
  }
}