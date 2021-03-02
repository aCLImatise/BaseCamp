version 1.0

task IsoformBlastMappingIndexerpl {
  command <<<
    isoform_blast_mapping_indexer_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}