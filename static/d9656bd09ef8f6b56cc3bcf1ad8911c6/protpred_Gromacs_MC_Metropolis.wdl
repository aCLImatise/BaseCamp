version 1.0

task ProtpredGromacsMCMetropolis {
  command <<<
    protpred_Gromacs_MC_Metropolis
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}