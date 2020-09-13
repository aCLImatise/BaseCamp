version 1.0

task GenePredHisto {
  input {
    Boolean? ids
    String what
    String gene_pred_file
  }
  command <<<
    genePredHisto \
      ~{what} \
      ~{gene_pred_file} \
      ~{if (ids) then "-ids" else ""}
  >>>
  parameter_meta {
    ids: "- a second column with the gene name, useful for finding outliers."
    what: ""
    gene_pred_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}