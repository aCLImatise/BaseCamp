version 1.0

task GtfToGenePred {
  input {
    String gtf
    String gene_pred
  }
  command <<<
    gtfToGenePred \
      ~{gtf} \
      ~{gene_pred}
  >>>
  parameter_meta {
    gtf: ""
    gene_pred: ""
  }
}