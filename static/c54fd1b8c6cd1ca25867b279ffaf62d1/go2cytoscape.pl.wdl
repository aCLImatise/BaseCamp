version 1.0

task Go2cytoscapepl {
  input {
    Int gotwocytosapedotpl
    String output_prefix
    File homer_go_results_file
    String organism
  }
  command <<<
    go2cytoscape_pl \
      ~{gotwocytosapedotpl} \
      ~{output_prefix} \
      ~{homer_go_results_file} \
      ~{organism}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gotwocytosapedotpl: ""
    output_prefix: ""
    homer_go_results_file: ""
    organism: ""
  }
  output {
    File out_stdout = stdout()
  }
}