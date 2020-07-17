version 1.0

task AbyssFiltergraph {
  input {
    String? km_er
    Boolean? ss
    Boolean? no_ss
    String? island
    String? tip
    String? length
    String? max_length
    Float? coverage
    Float? max_coverage
    Boolean? shim
    Boolean? no_shim
    String? shim_max_degree
    String? min_overlap
    Boolean? assemble
    Boolean? no_assemble
    File? graph
    File? ignore
    File? remove
    Boolean? output_graph_adj
    Boolean? as_qg
    Boolean? dot
    Boolean? gfa
    Boolean? gfa_one
    Boolean? gfa_two
    Boolean? gv
    Boolean? sam
    Boolean? verbose
    String contig_adjacency_graph
    String fast_a
  }
  command <<<
    abyss-filtergraph \
      ~{contig_adjacency_graph} \
      ~{fast_a} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{true="--SS" false="" ss} \
      ~{true="--no-SS" false="" no_ss} \
      ~{if defined(island) then ("--island " +  '"' + island + '"') else ""} \
      ~{if defined(tip) then ("--tip " +  '"' + tip + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(max_length) then ("--max-length " +  '"' + max_length + '"') else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(max_coverage) then ("--max-coverage " +  '"' + max_coverage + '"') else ""} \
      ~{true="--shim" false="" shim} \
      ~{true="--no-shim" false="" no_shim} \
      ~{if defined(shim_max_degree) then ("--shim-max-degree " +  '"' + shim_max_degree + '"') else ""} \
      ~{if defined(min_overlap) then ("--min-overlap " +  '"' + min_overlap + '"') else ""} \
      ~{true="--assemble" false="" assemble} \
      ~{true="--no-assemble" false="" no_assemble} \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{if defined(ignore) then ("--ignore " +  '"' + ignore + '"') else ""} \
      ~{if defined(remove) then ("--remove " +  '"' + remove + '"') else ""} \
      ~{true="--adj" false="" output_graph_adj} \
      ~{true="--asqg" false="" as_qg} \
      ~{true="--dot" false="" dot} \
      ~{true="--gfa" false="" gfa} \
      ~{true="--gfa1" false="" gfa_one} \
      ~{true="--gfa2" false="" gfa_two} \
      ~{true="--gv" false="" gv} \
      ~{true="--sam" false="" sam} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    km_er: "k-mer size"
    ss: "expect contigs to be oriented correctly"
    no_ss: "no assumption about contig orientation"
    island: "remove islands shorter than N [0]"
    tip: "remove tips shorter than N [0]"
    length: "remove contigs shorter than N [0]"
    max_length: "remove contigs longer than N [0]"
    coverage: "remove contigs with mean k-mer coverage less than FLOAT [0]"
    max_coverage: "remove contigs with mean k-mer coverage at least FLOAT [0]"
    shim: "remove filler contigs that only contribute to adjacency [default]"
    no_shim: "disable filler contigs removal"
    shim_max_degree: "only remove shims where the smaller of  in/out degree is smaller than N [1]"
    min_overlap: "require a minimum overlap of N bases [10]"
    assemble: "assemble unambiguous paths"
    no_assemble: "disable assembling of paths [default]"
    graph: "write the contig adjacency graph to FILE"
    ignore: "ignore contigs seen in FILE"
    remove: "remove contigs seen in FILE"
    output_graph_adj: "output the graph in ADJ format [default]"
    as_qg: "output the graph in ASQG format"
    dot: "output the graph in GraphViz format"
    gfa: "output the graph in GFA1 format"
    gfa_one: "output the graph in GFA1 format"
    gfa_two: "output the graph in GFA2 format"
    gv: "output the graph in GraphViz format"
    sam: "output the graph in SAM format"
    verbose: "display verbose output"
    contig_adjacency_graph: "contig adjacency graph"
    fast_a: "contigs to check consistency of ADJ edges"
  }
}