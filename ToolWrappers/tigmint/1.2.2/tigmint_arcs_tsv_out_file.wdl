version 1.0

task TigmintarcstsvOutFile {
  input {
    String tig_mint_arcs_tsv
    String graph_file
    String out_file
    String fast_a_file
  }
  command <<<
    tigmint_arcs_tsv out_file \
      ~{tig_mint_arcs_tsv} \
      ~{graph_file} \
      ~{out_file} \
      ~{fast_a_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/tigmint:1.2.2--py_1"
  }
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