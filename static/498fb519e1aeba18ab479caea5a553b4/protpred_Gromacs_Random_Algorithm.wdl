version 1.0

task ProtpredGromacsRandomAlgorithm {
  command <<<
    protpred_Gromacs_Random_Algorithm
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}