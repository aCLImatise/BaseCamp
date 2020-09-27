version 1.0

task Gff3GeneToGtfFormatpl {
  command <<<
    gff3_gene_to_gtf_format_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}