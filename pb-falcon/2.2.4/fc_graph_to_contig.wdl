version 1.0

task FcGraphToContig {
  input {
    Boolean? improper_p_ctg
    Boolean? proper_a_ctg
    File? p_reads_fast_a_fn
    File? sg_edges_list_fn
    File? utg_data_fn
    File? ctg_paths_fn
  }
  command <<<
    fc_graph_to_contig \
      ~{if (improper_p_ctg) then "--improper-p-ctg" else ""} \
      ~{if (proper_a_ctg) then "--proper-a-ctg" else ""} \
      ~{if defined(p_reads_fast_a_fn) then ("--preads-fasta-fn " +  '"' + p_reads_fast_a_fn + '"') else ""} \
      ~{if defined(sg_edges_list_fn) then ("--sg-edges-list-fn " +  '"' + sg_edges_list_fn + '"') else ""} \
      ~{if defined(utg_data_fn) then ("--utg-data-fn " +  '"' + utg_data_fn + '"') else ""} \
      ~{if defined(ctg_paths_fn) then ("--ctg-paths-fn " +  '"' + ctg_paths_fn + '"') else ""}
  >>>
  parameter_meta {
    improper_p_ctg: "Skip the initial read in each p_ctg path. (default:\\nFalse)"
    proper_a_ctg: "Skip the initial read in each a_ctg path. (default:\\nFalse)"
    p_reads_fast_a_fn: "Input. Preads file, required to construct the contigs.\\n(default: ./preads4falcon.fasta)"
    sg_edges_list_fn: "Input. File containing string graph edges, produced by\\novlp_to_graph.py. (default: ./sg_edges_list)"
    utg_data_fn: "Input. File containing unitig data, produced by\\novlp_to_graph.py. (default: ./utg_data)"
    ctg_paths_fn: "Input. File containing contig paths, produced by\\novlp_to_graph.py. (default: ./ctg_paths)"
  }
  output {
    File out_stdout = stdout()
  }
}