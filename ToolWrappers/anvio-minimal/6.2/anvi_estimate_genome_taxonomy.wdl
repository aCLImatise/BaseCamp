version 1.0

task Anviestimategenometaxonomy {
  command <<<
    anvi_estimate_genome_taxonomy
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}