version 1.0

task ProtpredGromacsTestDmRefinement {
  command <<<
    protpred_Gromacs_Test_dm_refinement
  >>>
  output {
    File out_stdout = stdout()
  }
}