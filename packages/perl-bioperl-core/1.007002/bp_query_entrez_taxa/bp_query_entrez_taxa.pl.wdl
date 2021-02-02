version 1.0

task BpQueryEntrezTaxapl {
  command <<<
    bp_query_entrez_taxa_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}