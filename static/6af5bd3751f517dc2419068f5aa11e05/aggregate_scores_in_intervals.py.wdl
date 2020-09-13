version 1.0

task AggregateScoresInIntervalspy {
  command <<<
    aggregate_scores_in_intervals_py
  >>>
  output {
    File out_stdout = stdout()
  }
}