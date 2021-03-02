version 1.0

task ComputeSrCovrevisedForGCContigpl {
  command <<<
    compute_sr_cov_revisedForGCContig_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}