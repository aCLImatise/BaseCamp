version 1.0

task Rsemgeneratedatamatrix {
  input {
    String sample_a_dot
    String? alleles_slash_genes_slash_isoforms
  }
  command <<<
    rsem_generate_data_matrix \
      ~{sample_a_dot} \
      ~{alleles_slash_genes_slash_isoforms}
  >>>
  parameter_meta {
    sample_a_dot: ""
    alleles_slash_genes_slash_isoforms: ""
  }
  output {
    File out_stdout = stdout()
  }
}