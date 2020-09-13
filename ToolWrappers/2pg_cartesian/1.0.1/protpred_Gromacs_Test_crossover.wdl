version 1.0

task ProtpredGromacsTestCrossover {
  command <<<
    protpred_Gromacs_Test_crossover
  >>>
  output {
    File out_stdout = stdout()
  }
}