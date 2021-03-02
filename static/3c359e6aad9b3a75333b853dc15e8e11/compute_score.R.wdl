version 1.0

task ComputeScoreR {
  command <<<
    compute_score_R
  >>>
  runtime {
    docker: "quay.io/biocontainers/chromeister:1.5.a--h516909a_0"
  }
  output {
    File out_stdout = stdout()
  }
}