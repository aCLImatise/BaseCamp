version 1.0

task IndexBlastPairsremoveGenePairpl {
  input {
    String ct_at_genome_lib_dir
    String fusion_name
  }
  command <<<
    index_blast_pairs_remove_gene_pair_pl \
      ~{ct_at_genome_lib_dir} \
      ~{fusion_name}
  >>>
  parameter_meta {
    ct_at_genome_lib_dir: ""
    fusion_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}