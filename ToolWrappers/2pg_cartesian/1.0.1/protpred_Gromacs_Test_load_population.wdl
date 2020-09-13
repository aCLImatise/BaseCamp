version 1.0

task ProtpredGromacsTestLoadPopulation {
  command <<<
    protpred_Gromacs_Test_load_population
  >>>
  output {
    File out_stdout = stdout()
  }
}