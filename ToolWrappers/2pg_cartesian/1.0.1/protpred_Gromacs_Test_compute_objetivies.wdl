version 1.0

task ProtpredGromacsTestComputeObjetivies {
  command <<<
    protpred_Gromacs_Test_compute_objetivies
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}