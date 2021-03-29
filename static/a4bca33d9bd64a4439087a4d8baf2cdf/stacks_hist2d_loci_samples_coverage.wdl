version 1.0

task Stackshist2dlocisamplescoverage {
  command <<<
    stacks_hist2d_loci_samples_coverage
  >>>
  runtime {
    docker: "quay.io/biocontainers/stacks:2.55--he513fc3_0"
  }
  output {
    File out_stdout = stdout()
  }
}