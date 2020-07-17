version 1.0

task TransMapPslToGenePred {
  input {
    String mrna_to_gene
    String source_gene_pred
    String mapped_psl
    String mapped_gene_pred
  }
  command <<<
    transMapPslToGenePred \
      ~{mrna_to_gene} \
      ~{source_gene_pred} \
      ~{mapped_psl} \
      ~{mapped_gene_pred}
  >>>
  parameter_meta {
    mrna_to_gene: ""
    source_gene_pred: ""
    mapped_psl: ""
    mapped_gene_pred: ""
  }
}