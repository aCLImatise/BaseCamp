version 1.0

task GenePredToBed {
  input {
    String in_dot_gene_pred
    String out_dot_bed
  }
  command <<<
    genePredToBed \
      ~{in_dot_gene_pred} \
      ~{out_dot_bed}
  >>>
  parameter_meta {
    in_dot_gene_pred: ""
    out_dot_bed: ""
  }
}