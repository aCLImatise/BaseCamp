version 1.0

task RiboSpec {
  input {
    String? output_directory_default
    String? assembly_graph
    Boolean? plot_graphs
    String? verbosity
    Int? min_contig_len
    Int? min_anchor_length
    String? medium_length_threshold
    String? threshold
    String? barr_nap_length_threshold
    String? barr_nap_exe
    String? cores
    Boolean? make_adjacency_matrix
  }
  command <<<
    ribo spec \
      ~{if defined(output_directory_default) then ("--output " +  '"' + output_directory_default + '"') else ""} \
      ~{if defined(assembly_graph) then ("--assembly_graph " +  '"' + assembly_graph + '"') else ""} \
      ~{true="--plot_graphs" false="" plot_graphs} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(min_contig_len) then ("--min_contig_len " +  '"' + min_contig_len + '"') else ""} \
      ~{if defined(min_anchor_length) then ("--min_anchor_length " +  '"' + min_anchor_length + '"') else ""} \
      ~{if defined(medium_length_threshold) then ("--medium_length_threshold " +  '"' + medium_length_threshold + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(barr_nap_length_threshold) then ("--barrnap_length_threshold " +  '"' + barr_nap_length_threshold + '"') else ""} \
      ~{if defined(barr_nap_exe) then ("--barrnap_exe " +  '"' + barr_nap_exe + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{true="--MAKE_ADJACENCY_MATRIX" false="" make_adjacency_matrix}
  >>>
  parameter_meta {
    output_directory_default: "output directory; default: None"
    assembly_graph: "fastg assembly graph from SPAdes or a SPAdes output directory. If the latter, riboSpec will be run on both the final assembly graph, and all the intermediate graphs for each k-mer."
    plot_graphs: "draw the network graphs"
    verbosity: "Logger writes debug to file in output dir; this sets verbosity level sent to stderr. 1 = debug(), 2 = info(), 3 = warning(), 4 = error() and 5 = critical(); default: 2"
    min_contig_len: "Contigs under this length will be collapsed; default: 75"
    min_anchor_length: "Paths must contain at least one node this long as an anchor; default: 500"
    medium_length_threshold: "Paths are simplified when contigs are greater than the --min_contig_length, but still short. These medium- length contigs may be assembly artificts or otherwise irrelevent. IF you dont want this filtering applied, set to the same value as --min_contig_len; default: 400"
    threshold: "paths must be at least this long (bp) to be considered; default: 1500"
    barr_nap_length_threshold: "This gets passed to barrnap's --lencutoff argument, for determining what we should treat as a legitimate hmm hit; default: 0.75"
    barr_nap_exe: "Path to barrnap executable; default: barrnap"
    cores: "cores to be used; default: None"
    make_adjacency_matrix: "generate and plot an adjacency matrix; default: False"
  }
}