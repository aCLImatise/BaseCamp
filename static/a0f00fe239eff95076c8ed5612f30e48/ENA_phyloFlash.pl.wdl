version 1.0

task ENAPhyloFlashpl {
  command <<<
    ENA_phyloFlash_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}