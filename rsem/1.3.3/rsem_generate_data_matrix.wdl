version 1.0

task RsemGenerateDataMatrix {
  input {
    String sample_a_dot
    String? alleles_slash_genes_slash_isoforms
  }
  command <<<
    rsem-generate-data-matrix \
      ~{sample_a_dot} \
      ~{alleles_slash_genes_slash_isoforms}
  >>>
  parameter_meta {
    sample_a_dot: ""
    alleles_slash_genes_slash_isoforms: ""
  }
}