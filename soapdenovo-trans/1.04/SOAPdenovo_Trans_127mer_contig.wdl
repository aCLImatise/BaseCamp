version 1.0

task SOAPdenovoTrans127merContig {
  input {
    Boolean? string_inputgraph_prefix
    Boolean? int_edgecovcutoff_edges
    Boolean? int_mergelevelmin_max
  }
  command <<<
    SOAPdenovo-Trans-127mer contig \
      ~{true="-g" false="" string_inputgraph_prefix} \
      ~{true="-e" false="" int_edgecovcutoff_edges} \
      ~{true="-M" false="" int_mergelevelmin_max}
  >>>
  parameter_meta {
    string_inputgraph_prefix: "<string>        inputGraph: prefix of input graph file name"
    int_edgecovcutoff_edges: "<int>           EdgeCovCutoff: edges with coverage no larger than EdgeCovCutoff will be deleted, [2]"
    int_mergelevelmin_max: "<int>           mergeLevel(min 0, max 3): the strength of merging similar sequences during contiging, [1]"
  }
}