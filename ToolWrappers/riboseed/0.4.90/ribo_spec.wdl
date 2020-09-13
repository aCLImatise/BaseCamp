version 1.0

task RiboSpec {
  input {
    Directory? output_directory_default
    Directory? assembly_graph
    Boolean? plot_graphs
    File? verbosity
    Int? min_contig_len
    Int? min_anchor_length
    Int? medium_length_threshold
    Int? threshold
    Int? barr_nap_length_threshold
    File? barr_nap_exe
    String? cores
    Boolean? make_adjacency_matrix
  }
  command <<<
    ribo spec \
      ~{if defined(output_directory_default) then ("--output " +  '"' + output_directory_default + '"') else ""} \
      ~{if defined(assembly_graph) then ("--assembly_graph " +  '"' + assembly_graph + '"') else ""} \
      ~{if (plot_graphs) then "--plot_graphs" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(min_contig_len) then ("--min_contig_len " +  '"' + min_contig_len + '"') else ""} \
      ~{if defined(min_anchor_length) then ("--min_anchor_length " +  '"' + min_anchor_length + '"') else ""} \
      ~{if defined(medium_length_threshold) then ("--medium_length_threshold " +  '"' + medium_length_threshold + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(barr_nap_length_threshold) then ("--barrnap_length_threshold " +  '"' + barr_nap_length_threshold + '"') else ""} \
      ~{if defined(barr_nap_exe) then ("--barrnap_exe " +  '"' + barr_nap_exe + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if (make_adjacency_matrix) then "--MAKE_ADJACENCY_MATRIX" else ""}
  >>>
  parameter_meta {
    output_directory_default: "output directory; default: None"
    assembly_graph: "fastg assembly graph from SPAdes or a SPAdes output\\ndirectory. If the latter, riboSpec will be run on both\\nthe final assembly graph, and all the intermediate\\ngraphs for each k-mer."
    plot_graphs: "draw the network graphs"
    verbosity: "Logger writes debug to file in output dir; this sets\\nverbosity level sent to stderr. 1 = debug(), 2 =\\ninfo(), 3 = warning(), 4 = error() and 5 = critical();\\ndefault: 2"
    min_contig_len: "Contigs under this length will be collapsed; default:\\n75"
    min_anchor_length: "Paths must contain at least one node this long as an\\nanchor; default: 500"
    medium_length_threshold: "Paths are simplified when contigs are greater than the\\n--min_contig_length, but still short. These medium-\\nlength contigs may be assembly artificts or otherwise\\nirrelevent. IF you dont want this filtering applied,\\nset to the same value as --min_contig_len; default:\\n400"
    threshold: "paths must be at least this long (bp) to be\\nconsidered; default: 1500"
    barr_nap_length_threshold: "This gets passed to barrnap's --lencutoff argument,\\nfor determining what we should treat as a legitimate\\nhmm hit; default: 0.75"
    barr_nap_exe: "Path to barrnap executable; default: barrnap"
    cores: "cores to be used; default: None"
    make_adjacency_matrix: "generate and plot an adjacency matrix; default: False"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_default = "${in_output_directory_default}"
    Directory out_assembly_graph = "${in_assembly_graph}"
    File out_verbosity = "${in_verbosity}"
  }
}