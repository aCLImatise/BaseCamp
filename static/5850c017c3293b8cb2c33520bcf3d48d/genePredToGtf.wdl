version 1.0

task GenePredToGtf {
  input {
    String database
    String gene_pred_table
    String output_dot_gtf
  }
  command <<<
    genePredToGtf \
      ~{database} \
      ~{gene_pred_table} \
      ~{output_dot_gtf}
  >>>
  parameter_meta {
    database: ""
    gene_pred_table: ""
    output_dot_gtf: ""
  }
}