version 1.0

task MetagraphDNATransform {
  input {
    Boolean? index_ranges
    Boolean? clear_dummy
    Boolean? prune_tips
    Boolean? state
    Boolean? to_adj_list
    Boolean? to_fast_a
    Boolean? enumerate
    Boolean? initialize_bloom
    Boolean? unit_igs
    Boolean? primary_km_ers
    Boolean? to_gfa
    Boolean? compacted
    Boolean? header
    Boolean? parallel
    Boolean? bloom_fpp
    Boolean? bloom_bpk
    Boolean? bloom_max_num_hash_functions
    Boolean? verbose
    String? o
    String graph
  }
  command <<<
    metagraph_DNA transform \
      ~{graph} \
      ~{if (index_ranges) then "--index-ranges" else ""} \
      ~{if (clear_dummy) then "--clear-dummy" else ""} \
      ~{if (prune_tips) then "--prune-tips" else ""} \
      ~{if (state) then "--state" else ""} \
      ~{if (to_adj_list) then "--to-adj-list" else ""} \
      ~{if (to_fast_a) then "--to-fasta" else ""} \
      ~{if (enumerate) then "--enumerate" else ""} \
      ~{if (initialize_bloom) then "--initialize-bloom" else ""} \
      ~{if (unit_igs) then "--unitigs" else ""} \
      ~{if (primary_km_ers) then "--primary-kmers" else ""} \
      ~{if (to_gfa) then "--to-gfa" else ""} \
      ~{if (compacted) then "--compacted" else ""} \
      ~{if (header) then "--header" else ""} \
      ~{if (parallel) then "--parallel" else ""} \
      ~{if (bloom_fpp) then "--bloom-fpp" else ""} \
      ~{if (bloom_bpk) then "--bloom-bpk" else ""} \
      ~{if (bloom_max_num_hash_functions) then "--bloom-max-num-hash-functions" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/metagraph:0.1.0--hcb16fcb_0"
  }
  parameter_meta {
    index_ranges: "[INT] index all node ranges in BOSS for suffixes of given length [10]"
    clear_dummy: "erase all redundant dummy edges and build an edgemask for non-redundant [off]"
    prune_tips: "[INT]   prune all dead ends of this length and shorter [0]"
    state: "[STR]        change state of succinct graph: small / dynamic / fast [stat]"
    to_adj_list: "write adjacency list to file [off]"
    to_fast_a: "extract sequences from graph and dump to compressed FASTA file [off]"
    enumerate: "enumerate sequences in FASTA [off]"
    initialize_bloom: "construct a Bloom filter for faster detection of non-existing k-mers [off]"
    unit_igs: "extract all unitigs from graph and dump to compressed FASTA file [off]"
    primary_km_ers: "output each k-mer only in one if its forms (canonical/non-canonical) [off]"
    to_gfa: "dump graph layout to GFA [off]"
    compacted: "dump compacted de Bruijn graph to GFA [off]"
    header: "[STR]       header for sequences in FASTA output []"
    parallel: "[INT]     use multiple threads for computation [1]"
    bloom_fpp: "[FLOAT]                          expected false positive rate [1.0]"
    bloom_bpk: "[FLOAT]                          number of bits per kmer [4.0]"
    bloom_max_num_hash_functions: "[INT]         maximum number of hash functions [10]"
    verbose: "switch on verbose output [off]"
    o: ""
    graph: ""
  }
  output {
    File out_stdout = stdout()
  }
}