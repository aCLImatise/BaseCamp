version 1.0

task ProtpredGromacsMono {
  command <<<
    protpred_Gromacs_Mono
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}