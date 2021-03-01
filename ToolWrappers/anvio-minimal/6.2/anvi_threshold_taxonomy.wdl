version 1.0

task Anvithresholdtaxonomy {
  command <<<
    anvi_threshold_taxonomy
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}