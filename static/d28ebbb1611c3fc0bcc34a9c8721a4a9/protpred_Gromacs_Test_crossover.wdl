version 1.0

task ProtpredGromacsTestCrossover {
  command <<<
    protpred_Gromacs_Test_crossover
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}