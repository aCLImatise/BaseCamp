version 1.0

task Faithpd {
  input {
    Boolean? input_biom_table
    Boolean? input_phylogeny_newick
    Boolean? the_output_series
  }
  command <<<
    faithpd \
      ~{if (input_biom_table) then "-i" else ""} \
      ~{if (input_phylogeny_newick) then "-t" else ""} \
      ~{if (the_output_series) then "-o" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_biom_table: "The input BIOM table."
    input_phylogeny_newick: "The input phylogeny in newick."
    the_output_series: "The output series."
  }
  output {
    File out_stdout = stdout()
  }
}