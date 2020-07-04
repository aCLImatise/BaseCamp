version 1.0

task Faithpd {
  input {
    Boolean? input_biom_table
    Boolean? input_phylogeny_newick
    Boolean? the_output_series
  }
  command <<<
    faithpd \
      ~{true="-i" false="" input_biom_table} \
      ~{true="-t" false="" input_phylogeny_newick} \
      ~{true="-o" false="" the_output_series}
  >>>
  parameter_meta {
    input_biom_table: "The input BIOM table."
    input_phylogeny_newick: "The input phylogeny in newick."
    the_output_series: "The output series."
  }
}