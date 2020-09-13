version 1.0

task TigmintarcstsvFastaFile {
  input {
    String tig_mint_arcs_tsv
    String graph_file
    String out_file
    String fast_a_file
  }
  command <<<
    tigmint_arcs_tsv fasta_file \
      ~{tig_mint_arcs_tsv} \
      ~{graph_file} \
      ~{out_file} \
      ~{fast_a_file}
  >>>
  parameter_meta {
    tig_mint_arcs_tsv: ""
    graph_file: ""
    out_file: ""
    fast_a_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}