version 1.0

task ProtpredGromacsTestComputeDiehdral {
  command <<<
    protpred_Gromacs_Test_compute_Diehdral
  >>>
  output {
    File out_stdout = stdout()
  }
}