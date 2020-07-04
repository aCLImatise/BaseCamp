version 1.0

task BedToGenePred {
  input {
    String bed_file
    String gene_pred_file
  }
  command <<<
    bedToGenePred \
      ~{bed_file} \
      ~{gene_pred_file}
  >>>
  parameter_meta {
    bed_file: ""
    gene_pred_file: ""
  }
}