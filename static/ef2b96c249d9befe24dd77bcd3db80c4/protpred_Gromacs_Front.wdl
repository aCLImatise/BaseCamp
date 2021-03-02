version 1.0

task ProtpredGromacsFront {
  command <<<
    protpred_Gromacs_Front
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}