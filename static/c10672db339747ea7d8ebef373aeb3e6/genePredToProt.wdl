version 1.0

task GenePredToProt {
  input {
    String gene_pred_file
    String genome_seqs
    String prot_fa
  }
  command <<<
    genePredToProt \
      ~{gene_pred_file} \
      ~{genome_seqs} \
      ~{prot_fa}
  >>>
  parameter_meta {
    gene_pred_file: ""
    genome_seqs: ""
    prot_fa: ""
  }
}