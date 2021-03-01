version 1.0

task ProtpredGromacsTestLoadPopulation {
  command <<<
    protpred_Gromacs_Test_load_population
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}