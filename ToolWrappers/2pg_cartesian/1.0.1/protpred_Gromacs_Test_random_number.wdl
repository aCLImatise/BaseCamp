version 1.0

task ProtpredGromacsTestRandomNumber {
  command <<<
    protpred_Gromacs_Test_random_number
  >>>
  output {
    File out_stdout = stdout()
  }
}