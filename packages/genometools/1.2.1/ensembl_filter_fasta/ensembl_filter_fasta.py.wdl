version 1.0

task EnsemblFilterFastapy {
  command <<<
    ensembl_filter_fasta_py
  >>>
  output {
    File out_stdout = stdout()
  }
}