version 1.0

task IndexBlastPairspl {
  input {
    String output_index_filename
    String blast_pairs_dot_gene_sym_do_tgz
    String? blast_pairs_supp_dot_gene_sym_do_tgz
  }
  command <<<
    index_blast_pairs_pl \
      ~{output_index_filename} \
      ~{blast_pairs_dot_gene_sym_do_tgz} \
      ~{blast_pairs_supp_dot_gene_sym_do_tgz}
  >>>
  parameter_meta {
    output_index_filename: ""
    blast_pairs_dot_gene_sym_do_tgz: ""
    blast_pairs_supp_dot_gene_sym_do_tgz: ""
  }
  output {
    File out_stdout = stdout()
  }
}