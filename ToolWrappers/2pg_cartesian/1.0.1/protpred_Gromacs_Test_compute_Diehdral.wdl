version 1.0

task ProtpredGromacsTestComputeDiehdral {
  command <<<
    protpred_Gromacs_Test_compute_Diehdral
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}