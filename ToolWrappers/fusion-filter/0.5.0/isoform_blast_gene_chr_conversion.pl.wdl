version 1.0

task IsoformBlastGeneChrConversionpl {
  command <<<
    isoform_blast_gene_chr_conversion_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}