version 1.0

task ProtpredGromacsDominance {
  command <<<
    protpred_Gromacs_Dominance
  >>>
  output {
    File out_stdout = stdout()
  }
}