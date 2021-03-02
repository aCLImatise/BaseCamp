version 1.0

task Ipa2GraphToContig {
  input {
    File? sg_edges_list_fn
    File? utg_data_fn
    File? ctg_paths_fn
    String p_ctg_tiling_path
  }
  command <<<
    ipa2_graph_to_contig \
      ~{p_ctg_tiling_path} \
      ~{if defined(sg_edges_list_fn) then ("--sg-edges-list-fn " +  '"' + sg_edges_list_fn + '"') else ""} \
      ~{if defined(utg_data_fn) then ("--utg-data-fn " +  '"' + utg_data_fn + '"') else ""} \
      ~{if defined(ctg_paths_fn) then ("--ctg-paths-fn " +  '"' + ctg_paths_fn + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sg_edges_list_fn: "Input. File containing string graph edges, produced by\\novlp_to_graph.py. (default: ./sg_edges_list)"
    utg_data_fn: "Input. File containing unitig data, produced by\\novlp_to_graph.py. (default: ./utg_data)"
    ctg_paths_fn: "Input. File containing contig paths, produced by\\novlp_to_graph.py. (default: ./ctg_paths)"
    p_ctg_tiling_path: "a_ctg_all_tiling_path"
  }
  output {
    File out_stdout = stdout()
  }
}