version 1.0

task PathConsensus {
  input {
    Int? km_er
    Int? dist_error
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
    Int? branches
    Float? identity
    Boolean? verbose
    File? db
    String? library
    String? strain
    String? species
    Int? di_align_d
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
      ~{if (output_graph_adj) then "--adj" else ""} \
      ~{if (as_qg) then "--asqg" else ""} \
      ~{if (dot) then "--dot" else ""} \
      ~{if (gfa) then "--gfa" else ""} \
      ~{if (gfa_one) then "--gfa1" else ""} \
      ~{if (gfa_two) then "--gfa2" else ""} \
      ~{if (gv) then "--gv" else ""} \
      ~{if (sam) then "--sam" else ""} \
      ~{if defined(branches) then ("--branches " +  '"' + branches + '"') else ""} \
      ~{if defined(identity) then ("--identity " +  '"' + identity + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(library) then ("--library " +  '"' + library + '"') else ""} \
      ~{if defined(strain) then ("--strain " +  '"' + strain + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(di_align_d) then ("--dialign-d " +  '"' + di_align_d + '"') else ""} \
      ~{if defined(di_align_m) then ("--dialign-m " +  '"' + di_align_m + '"') else ""} \
      ~{if defined(di_align_p) then ("--dialign-p " +  '"' + di_align_p + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/abyss:2.3.1--hd403d74_0"
  }
  parameter_meta {
    km_er: "k-mer size"
    dist_error: "acceptable error of a distance estimate\\ndefault: 6 bp"
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
    branches: "maximum number of sequences to align\\ndefault: 4"
    identity: "minimum identity, default: 0.9"
    verbose: "display verbose output"
    db: "specify path of database repository in FILE"
    library: "specify library NAME for database"
    strain: "specify strain NAME for database"
    species: "specify species NAME for database"
    di_align_d: "dialign debug level, default: 0"
    di_align_m: "score matrix, default: dna_matrix.scr"
    di_align_p: "diagonal length probability distribution\\ndefault: dna_diag_prob_100_exp_550000"
    fast_a: "contigs in FASTA format"
    contig_adjacency_graph: "contig adjacency graph"
    path: "paths of these contigs"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_consensus = "${in_consensus}"
    File out_graph = "${in_graph}"
  }
}