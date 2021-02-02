version 1.0

task ProtpredGromacsTestRotation {
  command <<<
    protpred_Gromacs_Test_rotation
  >>>
  output {
    File out_stdout = stdout()
  }
}