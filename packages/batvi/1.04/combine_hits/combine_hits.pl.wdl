version 1.0

task CombineHitspl {
  command <<<
    combine_hits_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}