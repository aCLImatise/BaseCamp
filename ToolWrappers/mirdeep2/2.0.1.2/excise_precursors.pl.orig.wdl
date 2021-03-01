version 1.0

task ExcisePrecursorsplorig {
  command <<<
    excise_precursors_pl_orig
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}