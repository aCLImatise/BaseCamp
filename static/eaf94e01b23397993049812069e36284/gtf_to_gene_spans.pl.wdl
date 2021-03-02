version 1.0

task GtfToGeneSpanspl {
  command <<<
    gtf_to_gene_spans_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}