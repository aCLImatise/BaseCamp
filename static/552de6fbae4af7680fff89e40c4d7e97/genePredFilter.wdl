version 1.0

task GenePredFilter {
  input {
    String? verbose
    String gene_pred_in
    String gene_pred_out
  }
  command <<<
    genePredFilter \
      ~{gene_pred_in} \
      ~{gene_pred_out} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    verbose: "- level >= 2 prints out errors for each problem found."
    gene_pred_in: ""
    gene_pred_out: ""
  }
}