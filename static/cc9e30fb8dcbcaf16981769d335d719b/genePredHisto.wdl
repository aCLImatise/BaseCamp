version 1.0

task GenePredHisto {
  input {
    Boolean? ids
    String what
    String gene_pred_file
    String histo_out
  }
  command <<<
    genePredHisto \
      ~{what} \
      ~{gene_pred_file} \
      ~{histo_out} \
      ~{true="-ids" false="" ids}
  >>>
  parameter_meta {
    ids: "- a second column with the gene name, useful for finding outliers."
    what: ""
    gene_pred_file: ""
    histo_out: ""
  }
}