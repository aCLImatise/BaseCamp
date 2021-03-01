version 1.0

task ExtractGenespl {
  command <<<
    extractGenes_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}