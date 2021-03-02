version 1.0

task ENAPhyloFlashpl {
  command <<<
    ENA_phyloFlash_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/phyloflash:3.4--0"
  }
  output {
    File out_stdout = stdout()
  }
}