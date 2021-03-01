version 1.0

task CombMotifpl {
  command <<<
    comb_motif_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}