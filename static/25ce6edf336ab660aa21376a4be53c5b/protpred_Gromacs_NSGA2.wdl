version 1.0

task ProtpredGromacsNSGA2 {
  command <<<
    protpred_Gromacs_NSGA2
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}