version 1.0

task GtfToGeneSpanspl {
  command <<<
    gtf_to_gene_spans_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}