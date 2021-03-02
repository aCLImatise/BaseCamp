version 1.0

task Stackshist2dlocisamplescoverage {
  command <<<
    stacks_hist2d_loci_samples_coverage
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}