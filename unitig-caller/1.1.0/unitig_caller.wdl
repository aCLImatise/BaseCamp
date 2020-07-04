version 1.0

task UnitigCaller {
  input {
    Boolean? build
    Boolean? query
    Boolean? simple
    String? refs
    String? reads
    String? graph_prefix
    String? unit_igs
    String? prefix_for_output
    Boolean? no_colour
    Boolean? clean
    String? ratio_k
    Boolean? in_exact
    String? km_er_size
    Int? minimizer_size
    Boolean? no_save_idx
    String? threads
    String? bifrost
  }
  command <<<
    unitig-caller \
      ~{true="--build" false="" build} \
      ~{true="--query" false="" query} \
      ~{true="--simple" false="" simple} \
      ~{if defined(refs) then ("--refs " +  '"' + refs + '"') else ""} \
      ~{if defined(reads) then ("--reads " +  '"' + reads + '"') else ""} \
      ~{if defined(graph_prefix) then ("--graph-prefix " +  '"' + graph_prefix + '"') else ""} \
      ~{if defined(unit_igs) then ("--unitigs " +  '"' + unit_igs + '"') else ""} \
      ~{if defined(prefix_for_output) then ("--output " +  '"' + prefix_for_output + '"') else ""} \
      ~{true="--no_colour" false="" no_colour} \
      ~{true="--clean" false="" clean} \
      ~{if defined(ratio_k) then ("--ratiok " +  '"' + ratio_k + '"') else ""} \
      ~{true="--inexact" false="" in_exact} \
      ~{if defined(km_er_size) then ("--kmer_size " +  '"' + km_er_size + '"') else ""} \
      ~{if defined(minimizer_size) then ("--minimizer_size " +  '"' + minimizer_size + '"') else ""} \
      ~{true="--no-save-idx" false="" no_save_idx} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(bifrost) then ("--bifrost " +  '"' + bifrost + '"') else ""}
  >>>
  parameter_meta {
    build: "Build coloured/uncoloured de Bruijn graph using Bifrost"
    query: "Query unitig presence/absence across input genomes"
    simple: "Use FM-index to make calls"
    refs: "Ref file to use to --build bifrost graph (or with --simple)"
    reads: "Read file to use to --build bifrost graph"
    graph_prefix: "Prefix of bifrost graph to --query"
    unit_igs: "fasta file of unitigs to query (--query or --simple)"
    prefix_for_output: "Prefix for output [default = 'unitig_caller']"
    no_colour: "Specify for uncoloured de Bruijn Graph [default = False]"
    clean: "Clean DBG (clip tips and delete isolated contigs shorter than k k-mers in length) [default = False]"
    ratio_k: "ratio of k-mers from queries that must occur in the graph to be considered as belonging to colour [default = 1.0]"
    in_exact: "Graph is searched with exact and inexact k-mers (1 substitution or indel) from queries [default = False]"
    km_er_size: "K-mer size for graph building/querying [default = 31]"
    minimizer_size: "Minimizer size to be used for k-mer hashing [default = 23]"
    no_save_idx: "Do not save FM-indexes for reuse"
    threads: "Number of threads to use [default = 1]"
    bifrost: "Location of bifrost executable [default = Bifrost]"
  }
}