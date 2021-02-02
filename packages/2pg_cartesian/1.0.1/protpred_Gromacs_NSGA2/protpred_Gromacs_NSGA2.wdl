version 1.0

task ProtpredGromacsNSGA2 {
  command <<<
    protpred_Gromacs_NSGA2
  >>>
  output {
    File out_stdout = stdout()
  }
}