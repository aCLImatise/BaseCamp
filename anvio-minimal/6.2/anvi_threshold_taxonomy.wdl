version 1.0

task Anvithresholdtaxonomy {
  command <<<
    anvi_threshold_taxonomy
  >>>
  output {
    File out_stdout = stdout()
  }
}