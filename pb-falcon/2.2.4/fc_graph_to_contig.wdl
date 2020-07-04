version 1.0

task FcGraphToContig {
  input {
    Boolean? improper_p_ctg
    Boolean? proper_a_ctg
    String? p_reads_fast_a_fn
    String? sg_edges_list_fn
    String? utg_data_fn
    String? ctg_paths_fn
  }
  command <<<
    fc_graph_to_contig \
      ~{true="--improper-p-ctg" false="" improper_p_ctg} \
      ~{true="--proper-a-ctg" false="" proper_a_ctg} \
      ~{if defined(p_reads_fast_a_fn) then ("--preads-fasta-fn " +  '"' + p_reads_fast_a_fn + '"') else ""} \
      ~{if defined(sg_edges_list_fn) then ("--sg-edges-list-fn " +  '"' + sg_edges_list_fn + '"') else ""} \
      ~{if defined(utg_data_fn) then ("--utg-data-fn " +  '"' + utg_data_fn + '"') else ""} \
      ~{if defined(ctg_paths_fn) then ("--ctg-paths-fn " +  '"' + ctg_paths_fn + '"') else ""}
  >>>
  parameter_meta {
    improper_p_ctg: "Skip the initial read in each p_ctg path. (default: False)"
    proper_a_ctg: "Skip the initial read in each a_ctg path. (default: False)"
    p_reads_fast_a_fn: "Input. Preads file, required to construct the contigs. (default: ./preads4falcon.fasta)"
    sg_edges_list_fn: "Input. File containing string graph edges, produced by ovlp_to_graph.py. (default: ./sg_edges_list)"
    utg_data_fn: "Input. File containing unitig data, produced by ovlp_to_graph.py. (default: ./utg_data)"
    ctg_paths_fn: "Input. File containing contig paths, produced by ovlp_to_graph.py. (default: ./ctg_paths)"
  }
}