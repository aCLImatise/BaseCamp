version 1.0

task OrthomclDumpPairsFiles {
  input {
    String mcl_input
    String pairs_slash
    String potential_orthologs_dot_txt
    String potential_in_paralogs_dot_txt
    String potential_co_orthologs_dot_txt
  }
  command <<<
    orthomclDumpPairsFiles \
      ~{mcl_input} \
      ~{pairs_slash} \
      ~{potential_orthologs_dot_txt} \
      ~{potential_in_paralogs_dot_txt} \
      ~{potential_co_orthologs_dot_txt}
  >>>
  parameter_meta {
    mcl_input: "- file required by the mcl program"
    pairs_slash: "- dir holding relationship files"
    potential_orthologs_dot_txt: "- ortholog relationships"
    potential_in_paralogs_dot_txt: "- inparalog relationships"
    potential_co_orthologs_dot_txt: "- coortholog relationships"
  }
  output {
    File out_stdout = stdout()
  }
}