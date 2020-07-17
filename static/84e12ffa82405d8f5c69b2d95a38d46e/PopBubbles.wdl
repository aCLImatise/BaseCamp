version 1.0

task PopBubbles {
  input {
    String? km_er
    String? branches
    String? bubble_length
    String? identity
    String? coverage
    Boolean? scaffold
    Boolean? no_scaffold
    Boolean? ss
    Boolean? no_ss
    File? graph
    Boolean? output_graph_adj
    Boolean? as_qg
    Boolean? dot
    Boolean? gv
    Boolean? gfa
    Boolean? sam
    Boolean? bubble_graph
    String? threads
    Boolean? verbose
    String fast_a
    String contig_adjacency_graph
  }
  command <<<
    PopBubbles \
      ~{fast_a} \
      ~{contig_adjacency_graph} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(branches) then ("--branches " +  '"' + branches + '"') else ""} \
      ~{if defined(bubble_length) then ("--bubble-length " +  '"' + bubble_length + '"') else ""} \
      ~{if defined(identity) then ("--identity " +  '"' + identity + '"') else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{true="--scaffold" false="" scaffold} \
      ~{true="--no-scaffold" false="" no_scaffold} \
      ~{true="--SS" false="" ss} \
      ~{true="--no-SS" false="" no_ss} \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{true="--adj" false="" output_graph_adj} \
      ~{true="--asqg" false="" as_qg} \
      ~{true="--dot" false="" dot} \
      ~{true="--gv" false="" gv} \
      ~{true="--gfa" false="" gfa} \
      ~{true="--sam" false="" sam} \
      ~{true="--bubble-graph" false="" bubble_graph} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    km_er: "k-mer size"
    branches: "maximum number of branches, default: 2"
    bubble_length: "pop bubbles shorter than N bp default is 10000"
    identity: "minimum identity, default: 0.9"
    coverage: "remove contigs with mean k-mer coverage less than this threshold [0]"
    scaffold: "scaffold over bubbles that have insufficient identity"
    no_scaffold: "disable scaffolding [default]"
    ss: "expect contigs to be oriented correctly"
    no_ss: "no assumption about contig orientation [default]"
    graph: "write the contig adjacency graph to FILE"
    output_graph_adj: "output the graph in ADJ format [default]"
    as_qg: "output the graph in ASQG format"
    dot: "output the graph in GraphViz format"
    gv: "output the graph in GraphViz format"
    gfa: "output the graph in GFA format"
    sam: "output the graph in SAM format"
    bubble_graph: "output a graph of the bubbles"
    threads: "use N parallel threads [1]"
    verbose: "display verbose output"
    fast_a: "contigs in FASTA format"
    contig_adjacency_graph: "contig adjacency graph"
  }
}