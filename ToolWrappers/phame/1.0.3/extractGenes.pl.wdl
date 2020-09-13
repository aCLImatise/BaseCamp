version 1.0

task ExtractGenespl {
  command <<<
    extractGenes_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}