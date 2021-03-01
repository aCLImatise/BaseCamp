version 1.0

task Wtjackpl {
  command <<<
    wtjack_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/admixtools:7.0.1--h1d3628b_0"
  }
  output {
    File out_stdout = stdout()
  }
}