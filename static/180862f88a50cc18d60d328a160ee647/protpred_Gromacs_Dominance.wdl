version 1.0

task ProtpredGromacsDominance {
  command <<<
    protpred_Gromacs_Dominance
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}