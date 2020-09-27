version 1.0

task ENAPhyloFlashpl {
  command <<<
    ENA_phyloFlash_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}