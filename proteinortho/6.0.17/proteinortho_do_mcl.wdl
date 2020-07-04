version 1.0

task ProteinorthoDoMcl.pl {
  input {
    String cores
    String blast_graph_one
  }
  command <<<
    proteinortho_do_mcl.pl \
      ~{cores} \
      ~{blast_graph_one}
  >>>
  parameter_meta {
    cores: ""
    blast_graph_one: ""
  }
}