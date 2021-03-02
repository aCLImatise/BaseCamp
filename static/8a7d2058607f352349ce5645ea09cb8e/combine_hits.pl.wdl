version 1.0

task CombineHitspl {
  command <<<
    combine_hits_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}