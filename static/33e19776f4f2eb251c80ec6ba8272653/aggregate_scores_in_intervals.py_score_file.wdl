version 1.0

task AggregateScoresInIntervalspyScoreFile {
  input {
    Boolean? binned
    String files
  }
  command <<<
    aggregate_scores_in_intervals_py score_file \
      ~{files} \
      ~{if (binned) then "--binned" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bx-python:0.8.11--py36h5e0341f_0"
  }
  parameter_meta {
    binned: "'score_file' is actually a directory of binned array"
    files: "-m MASK, --mask=MASK  bed file containing regions not to consider valid"
  }
  output {
    File out_stdout = stdout()
  }
}