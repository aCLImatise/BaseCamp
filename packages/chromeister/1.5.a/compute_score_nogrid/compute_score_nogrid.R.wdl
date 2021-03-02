version 1.0

task ComputeScorenogridR {
  command <<<
    compute_score_nogrid_R
  >>>
  runtime {
    docker: "quay.io/biocontainers/chromeister:1.5.a--h516909a_0"
  }
  output {
    File out_stdout = stdout()
  }
}