version 1.0

task FastScaledScorespy {
  command <<<
    fast_scaled_scores_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/salsa2:2.2--py27h78a066a_0"
  }
  output {
    File out_stdout = stdout()
  }
}