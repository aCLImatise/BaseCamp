version 1.0

task ALELowScorespy {
  command <<<
    ALE_low_scores_py
  >>>
  output {
    File out_stdout = stdout()
  }
}