version 1.0

task ExcisePrecursorsIterativeFinalplorig {
  command <<<
    excise_precursors_iterative_final_pl_orig
  >>>
  output {
    File out_stdout = stdout()
  }
}