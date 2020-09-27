version 1.0

task IsoformBlastMappingIndexerpl {
  command <<<
    isoform_blast_mapping_indexer_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}