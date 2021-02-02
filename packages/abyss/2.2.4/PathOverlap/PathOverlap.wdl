version 1.0

task PathOverlap {
  input {
    Int? km_er
    File? graph
    File? repeats
    Boolean? overlap
    Boolean? assemble
    Boolean? trim
    Boolean? output_graph_adj
    Boolean? as_qg
    Boolean? dot
    Boolean? gfa
    Boolean? gfa_one
    Boolean? gfa_two
    Boolean? gv
    Boolean? sam
    Boolean? ss
    Boolean? no_ss
    Boolean? verbose
    File? db
    String? library
    String? strain
    String? species
    String contig_adjacency_graph
    File path
  }
  command <<<
    PathOverlap \
      ~{contig_adjacency_graph} \
      ~{path} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{if defined(repeats) then ("--repeats " +  '"' + repeats + '"') else ""} \
      ~{if (overlap) then "--overlap" else ""} \
      ~{if (assemble) then "--assemble" else ""} \
      ~{if (trim) then "--trim" else ""} \
      ~{if (output_graph_adj) then "--adj" else ""} \
      ~{if (as_qg) then "--asqg" else ""} \
      ~{if (dot) then "--dot" else ""} \
      ~{if (gfa) then "--gfa" else ""} \
      ~{if (gfa_one) then "--gfa1" else ""} \
      ~{if (gfa_two) then "--gfa2" else ""} \
      ~{if (gv) then "--gv" else ""} \
      ~{if (sam) then "--sam" else ""} \
      ~{if (ss) then "--SS" else ""} \
      ~{if (no_ss) then "--no-SS" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(library) then ("--library " +  '"' + library + '"') else ""} \
      ~{if defined(strain) then ("--strain " +  '"' + strain + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""}
  >>>
  parameter_meta {
    km_er: "k-mer size"
    graph: "write the contig adjacency graph to FILE"
    repeats: "write repeat contigs to FILE"
    overlap: "find overlapping paths [default]"
    assemble: "assemble overlapping paths"
    trim: "trim overlapping paths"
    output_graph_adj: "output the graph in ADJ format [default]"
    as_qg: "output the graph in ASQG format"
    dot: "output the graph in GraphViz format"
    gfa: "output the graph in GFA1 format"
    gfa_one: "output the graph in GFA1 format"
    gfa_two: "output the graph in GFA2 format"
    gv: "output the graph in GraphViz format"
    sam: "output the graph in SAM format"
    ss: "expect contigs to be oriented correctly"
    no_ss: "no assumption about contig orientation [default]"
    verbose: "display verbose output"
    db: "specify path of database repository in FILE"
    library: "specify library NAME for sqlite"
    strain: "specify strain NAME for sqlite"
    species: "specify species NAME for sqlite"
    contig_adjacency_graph: "contig adjacency graph"
    path: "sequences of contig IDs"
  }
  output {
    File out_stdout = stdout()
  }
}