version 1.0

task Unitigcaller {
  input {
    Boolean? build
    Boolean? simple
    File? refs
    File? reads
    String? graph_prefix
    File? unit_igs
    String? prefix_for_output
    Boolean? no_colour
    Boolean? clean
    Float? ratio_k
    Boolean? in_exact
    Int? km_er_size
    Int? minimizer_size
    Boolean? no_save_idx
    Int? threads
    String? location_bifrost_executable
    String _query_presenceabsence
  }
  command <<<
    unitig_caller \
      ~{_query_presenceabsence} \
      ~{if (build) then "--build" else ""} \
      ~{if (simple) then "--simple" else ""} \
      ~{if defined(refs) then ("--refs " +  '"' + refs + '"') else ""} \
      ~{if defined(reads) then ("--reads " +  '"' + reads + '"') else ""} \
      ~{if defined(graph_prefix) then ("--graph-prefix " +  '"' + graph_prefix + '"') else ""} \
      ~{if defined(unit_igs) then ("--unitigs " +  '"' + unit_igs + '"') else ""} \
      ~{if defined(prefix_for_output) then ("--output " +  '"' + prefix_for_output + '"') else ""} \
      ~{if (no_colour) then "--no_colour" else ""} \
      ~{if (clean) then "--clean" else ""} \
      ~{if defined(ratio_k) then ("--ratiok " +  '"' + ratio_k + '"') else ""} \
      ~{if (in_exact) then "--inexact" else ""} \
      ~{if defined(km_er_size) then ("--kmer_size " +  '"' + km_er_size + '"') else ""} \
      ~{if defined(minimizer_size) then ("--minimizer_size " +  '"' + minimizer_size + '"') else ""} \
      ~{if (no_save_idx) then "--no-save-idx" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(location_bifrost_executable) then ("--bifrost " +  '"' + location_bifrost_executable + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    build: "Build coloured/uncoloured de Bruijn graph using"
    simple: "Use FM-index to make calls"
    refs: "Ref file to use to --build bifrost graph (or with"
    reads: "Read file to use to --build bifrost graph"
    graph_prefix: "Prefix of bifrost graph to --query"
    unit_igs: "fasta file of unitigs to query (--query or --simple)"
    prefix_for_output: "Prefix for output [default = 'unitig_caller']"
    no_colour: "Specify for uncoloured de Bruijn Graph [default =\\nFalse]"
    clean: "Clean DBG (clip tips and delete isolated contigs\\nshorter than k k-mers in length) [default = False]"
    ratio_k: "ratio of k-mers from queries that must occur in the\\ngraph to be considered as belonging to colour [default\\n= 1.0]"
    in_exact: "Graph is searched with exact and inexact k-mers (1\\nsubstitution or indel) from queries [default = False]"
    km_er_size: "K-mer size for graph building/querying [default = 31]"
    minimizer_size: "Minimizer size to be used for k-mer hashing [default =\\n23]"
    no_save_idx: "Do not save FM-indexes for reuse"
    threads: "Number of threads to use [default = 1]"
    location_bifrost_executable: "Location of bifrost executable [default = Bifrost]"
    _query_presenceabsence: "--query               Query unitig presence/absence across input genomes"
  }
  output {
    File out_stdout = stdout()
  }
}