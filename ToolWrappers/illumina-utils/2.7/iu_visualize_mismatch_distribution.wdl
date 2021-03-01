version 1.0

task Iuvisualizemismatchdistribution {
  command <<<
    iu_visualize_mismatch_distribution
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}