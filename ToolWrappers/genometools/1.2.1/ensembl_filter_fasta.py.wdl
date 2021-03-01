version 1.0

task EnsemblFilterFastapy {
  command <<<
    ensembl_filter_fasta_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}