version 1.0

task RefineHexamerScorespl {
  command <<<
    refine_hexamer_scores_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}