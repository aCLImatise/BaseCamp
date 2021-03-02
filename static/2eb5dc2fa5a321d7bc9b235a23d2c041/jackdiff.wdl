version 1.0

task Jackdiff {
  command <<<
    jackdiff
  >>>
  runtime {
    docker: "quay.io/biocontainers/admixtools:7.0.1--h1d3628b_0"
  }
  output {
    File out_stdout = stdout()
  }
}