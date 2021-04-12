version 1.0

task ProteinorthoDoMclpl {
  input {
    String cores
    Int blast_graph_one
  }
  command <<<
    proteinortho_do_mcl_pl \
      ~{cores} \
      ~{blast_graph_one}
  >>>
  runtime {
    docker: "quay.io/biocontainers/proteinortho:6.0.29--hb0e25da_1"
  }
  parameter_meta {
    cores: ""
    blast_graph_one: ""
  }
  output {
    File out_stdout = stdout()
  }
}