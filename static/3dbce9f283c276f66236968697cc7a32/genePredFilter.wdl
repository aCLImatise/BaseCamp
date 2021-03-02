version 1.0

task GenePredFilter {
  input {
    String? db
    Int? verbose
    String gene_pred_in
  }
  command <<<
    genePredFilter \
      ~{gene_pred_in} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    db: "- If specified, then this database is used to\\nget chromosome sizes."
    verbose: "- level >= 2 prints out errors for each problem found."
    gene_pred_in: ""
  }
  output {
    File out_stdout = stdout()
  }
}