version 1.0

task GetScoresInIntervalspy {
  input {
    String score_file
    String interval_file
    String? out_file
  }
  command <<<
    get_scores_in_intervals_py \
      ~{score_file} \
      ~{interval_file} \
      ~{out_file}
  >>>
  parameter_meta {
    score_file: ""
    interval_file: ""
    out_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}