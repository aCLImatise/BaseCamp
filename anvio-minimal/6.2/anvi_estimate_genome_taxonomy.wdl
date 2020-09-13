version 1.0

task Anviestimategenometaxonomy {
  command <<<
    anvi_estimate_genome_taxonomy
  >>>
  output {
    File out_stdout = stdout()
  }
}