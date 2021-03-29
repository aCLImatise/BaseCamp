version 1.0

task Iuvisualizemismatchdistribution {
  command <<<
    iu_visualize_mismatch_distribution
  >>>
  runtime {
    docker: "quay.io/biocontainers/illumina-utils:2.11--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}