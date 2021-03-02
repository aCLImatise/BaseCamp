version 1.0

task SiftBamMaxCovpl {
  command <<<
    sift_bam_max_cov_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/trinity:2.11.0--h5ef6573_1"
  }
  output {
    File out_stdout = stdout()
  }
}