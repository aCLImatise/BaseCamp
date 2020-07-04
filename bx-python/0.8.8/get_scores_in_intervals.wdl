version 1.0

task GetScoresInIntervals.py {
  input {
    String score_file
    Int interval_file
    String? out_file
  }
  command <<<
    get_scores_in_intervals.py \
      ~{score_file} \
      ~{interval_file} \
      ~{out_file}
  >>>
  parameter_meta {
    score_file: ""
    interval_file: ""
    out_file: ""
  }
}