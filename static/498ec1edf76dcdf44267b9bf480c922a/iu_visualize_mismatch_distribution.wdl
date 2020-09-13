version 1.0

task Iuvisualizemismatchdistribution {
  command <<<
    iu_visualize_mismatch_distribution
  >>>
  output {
    File out_stdout = stdout()
  }
}