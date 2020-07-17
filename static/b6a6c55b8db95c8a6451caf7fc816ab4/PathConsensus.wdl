version 1.0

task PathConsensus {
  input {
    String? km_er
    String? dist_error
    File? out
    File? consensus
    File? graph
    Boolean? output_graph_adj
    Boolean? as_qg
    Boolean? dot
    Boolean? gfa
    Boolean? gfa_one
    Boolean? gfa_two
    Boolean? gv
    Boolean? sam
    String? branches
    String? identity
    Boolean? verbose
    File? db
    String? library
    String? strain
    String? species
    String? di_align_d
    File? di_align_m
    File? di_align_p
    String fast_a
    String contig_adjacency_graph
    File path
  }
  command <<<
    PathConsensus \
      ~{fast_a} \
      ~{contig_adjacency_graph} \
      ~{path} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(dist_error) then ("--dist-error " +  '"' + dist_error + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(consensus) then ("--consensus " +  '"' + consensus + '"') else ""} \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{true="--adj" false="" output_graph_adj} \
      ~{true="--asqg" false="" as_qg} \
      ~{true="--dot" false="" dot} \
      ~{true="--gfa" false="" gfa} \
      ~{true="--gfa1" false="" gfa_one} \
      ~{true="--gfa2" false="" gfa_two} \
      ~{true="--gv" false="" gv} \
      ~{true="--sam" false="" sam} \
      ~{if defined(branches) then ("--branches " +  '"' + branches + '"') else ""} \
      ~{if defined(identity) then ("--identity " +  '"' + identity + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(library) then ("--library " +  '"' + library + '"') else ""} \
      ~{if defined(strain) then ("--strain " +  '"' + strain + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(di_align_d) then ("--dialign-d " +  '"' + di_align_d + '"') else ""} \
      ~{if defined(di_align_m) then ("--dialign-m " +  '"' + di_align_m + '"') else ""} \
      ~{if defined(di_align_p) then ("--dialign-p " +  '"' + di_align_p + '"') else ""}
  >>>
  parameter_meta {
    km_er: "k-mer size"
    dist_error: "acceptable error of a distance estimate default: 6 bp"
    out: "output contig paths to FILE"
    consensus: "output consensus sequences to FILE"
    graph: "output the contig adjacency graph to FILE"
    output_graph_adj: "output the graph in ADJ format [default]"
    as_qg: "output the graph in ASQG format"
    dot: "output the graph in GraphViz format"
    gfa: "output the graph in GFA1 format"
    gfa_one: "output the graph in GFA1 format"
    gfa_two: "output the graph in GFA2 format"
    gv: "output the graph in GraphViz format"
    sam: "output the graph in SAM format"
    branches: "maximum number of sequences to align default: 4"
    identity: "minimum identity, default: 0.9"
    verbose: "display verbose output"
    db: "specify path of database repository in FILE"
    library: "specify library NAME for database"
    strain: "specify strain NAME for database"
    species: "specify species NAME for database"
    di_align_d: "dialign debug level, default: 0"
    di_align_m: "score matrix, default: dna_matrix.scr"
    di_align_p: "diagonal length probability distribution default: dna_diag_prob_100_exp_550000"
    fast_a: "contigs in FASTA format"
    contig_adjacency_graph: "contig adjacency graph"
    path: "paths of these contigs"
  }
}