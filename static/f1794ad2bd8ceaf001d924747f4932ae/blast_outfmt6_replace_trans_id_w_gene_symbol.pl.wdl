version 1.0

task BlastOutfmt6ReplaceTransIdWGeneSymbolpl {
  command <<<
    blast_outfmt6_replace_trans_id_w_gene_symbol_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}