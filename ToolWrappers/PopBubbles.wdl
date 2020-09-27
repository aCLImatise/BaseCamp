version 1.0

task PopBubbles {
  input {
    Int? km_er
    Int? branches
    Int? bubble_length
    Float? identity
    Int? coverage
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
    Int? threads
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
      ~{if (scaffold) then "--scaffold" else ""} \
      ~{if (no_scaffold) then "--no-scaffold" else ""} \
      ~{if (ss) then "--SS" else ""} \
      ~{if (no_ss) then "--no-SS" else ""} \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{if (output_graph_adj) then "--adj" else ""} \
      ~{if (as_qg) then "--asqg" else ""} \
      ~{if (dot) then "--dot" else ""} \
      ~{if (gv) then "--gv" else ""} \
      ~{if (gfa) then "--gfa" else ""} \
      ~{if (sam) then "--sam" else ""} \
      ~{if (bubble_graph) then "--bubble-graph" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    km_er: "k-mer size"
    branches: "maximum number of branches, default: 2"
    bubble_length: "pop bubbles shorter than N bp\\ndefault is 10000"
    identity: "minimum identity, default: 0.9"
    coverage: "remove contigs with mean k-mer coverage\\nless than this threshold [0]"
    scaffold: "scaffold over bubbles that have\\ninsufficient identity"
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
  output {
    File out_stdout = stdout()
  }
}