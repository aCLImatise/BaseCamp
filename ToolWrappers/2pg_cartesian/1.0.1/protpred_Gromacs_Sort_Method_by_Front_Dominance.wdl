version 1.0

task ProtpredGromacsSortMethodByFrontDominance {
  command <<<
    protpred_Gromacs_Sort_Method_by_Front_Dominance
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}