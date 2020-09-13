version 1.0

task GtfToExonGeneRecordspl {
  command <<<
    gtf_to_exon_gene_records_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}