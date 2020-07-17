version 1.0

task Ipa2GraphToContig {
  input {
    String? sg_edges_list_fn
    String? utg_data_fn
    String? ctg_paths_fn
  }
  command <<<
    ipa2_graph_to_contig \
      ~{if defined(sg_edges_list_fn) then ("--sg-edges-list-fn " +  '"' + sg_edges_list_fn + '"') else ""} \
      ~{if defined(utg_data_fn) then ("--utg-data-fn " +  '"' + utg_data_fn + '"') else ""} \
      ~{if defined(ctg_paths_fn) then ("--ctg-paths-fn " +  '"' + ctg_paths_fn + '"') else ""}
  >>>
  parameter_meta {
    sg_edges_list_fn: "Input. File containing string graph edges, produced by ovlp_to_graph.py. (default: ./sg_edges_list)"
    utg_data_fn: "Input. File containing unitig data, produced by ovlp_to_graph.py. (default: ./utg_data)"
    ctg_paths_fn: "Input. File containing contig paths, produced by ovlp_to_graph.py. (default: ./ctg_paths)"
  }
}