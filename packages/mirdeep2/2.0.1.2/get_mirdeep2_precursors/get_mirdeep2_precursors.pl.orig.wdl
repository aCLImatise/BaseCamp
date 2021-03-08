version 1.0

task GetMirdeep2Precursorsplorig {
  command <<<
    get_mirdeep2_precursors_pl_orig
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}