version 1.0

task Go2cytoscape.pl {
  input {
    String gotwocytosapedotpl
    String output_prefix
    String homer_go_results_file
    String organism
  }
  command <<<
    go2cytoscape.pl \
      ~{gotwocytosapedotpl} \
      ~{output_prefix} \
      ~{homer_go_results_file} \
      ~{organism}
  >>>
  parameter_meta {
    gotwocytosapedotpl: ""
    output_prefix: ""
    homer_go_results_file: ""
    organism: ""
  }
}