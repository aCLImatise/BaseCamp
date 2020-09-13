version 1.0

task IndexBlastPairsremoveOverlappingGenespl {
  command <<<
    index_blast_pairs_remove_overlapping_genes_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}