version 1.0

task ProtpredGromacsTestComputeObjetivies {
  command <<<
    protpred_Gromacs_Test_compute_objetivies
  >>>
  output {
    File out_stdout = stdout()
  }
}