version 1.0

task SOAPdenovoTrans127merContig {
  input {
    Boolean? string_inputgraph_prefix
    Boolean? int_edgecovcutoff_edges
    Boolean? int_mergelevelmin_max
  }
  command <<<
    SOAPdenovo_Trans_127mer contig \
      ~{if (string_inputgraph_prefix) then "-g" else ""} \
      ~{if (int_edgecovcutoff_edges) then "-e" else ""} \
      ~{if (int_mergelevelmin_max) then "-M" else ""}
  >>>
  parameter_meta {
    string_inputgraph_prefix: "<string>        inputGraph: prefix of input graph file name"
    int_edgecovcutoff_edges: "<int>           EdgeCovCutoff: edges with coverage no larger than EdgeCovCutoff will be deleted, [2]"
    int_mergelevelmin_max: "<int>           mergeLevel(min 0, max 3): the strength of merging similar sequences during contiging, [1]"
  }
  output {
    File out_stdout = stdout()
  }
}