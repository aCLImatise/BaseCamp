version 1.0

task ComputeSrCovpl {
  command <<<
    compute_sr_cov_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}