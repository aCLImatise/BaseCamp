version 1.0

task IndexBlastPairs.removeGenePair.pl {
  input {
    String ct_at_genome_lib_dir
    String fusion_name
  }
  command <<<
    index_blast_pairs.remove_gene_pair.pl \
      ~{ct_at_genome_lib_dir} \
      ~{fusion_name}
  >>>
  parameter_meta {
    ct_at_genome_lib_dir: ""
    fusion_name: ""
  }
}