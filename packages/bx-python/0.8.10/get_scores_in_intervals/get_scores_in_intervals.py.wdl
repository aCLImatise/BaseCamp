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
  runtime {
    docker: "quay.io/biocontainers/bx-python:0.8.10--py36h5e0341f_0"
  }
  parameter_meta {
    score_file: ""
    interval_file: ""
    out_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}