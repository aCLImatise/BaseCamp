version 1.0

task MetagraphClean {
  input {
    Boolean? min_count
    Boolean? max_count
    Boolean? num_singletons
    Boolean? prune_tips
    Boolean? prune_unit_igs
    Boolean? fall_back
    Boolean? count_bins_q
    Boolean? unit_igs
    Boolean? to_fast_a
    Boolean? enumerate
    Boolean? verbose
    String? o
    String graph
  }
  command <<<
    metagraph clean \
      ~{graph} \
      ~{if (min_count) then "--min-count" else ""} \
      ~{if (max_count) then "--max-count" else ""} \
      ~{if (num_singletons) then "--num-singletons" else ""} \
      ~{if (prune_tips) then "--prune-tips" else ""} \
      ~{if (prune_unit_igs) then "--prune-unitigs" else ""} \
      ~{if (fall_back) then "--fallback" else ""} \
      ~{if (count_bins_q) then "--count-bins-q" else ""} \
      ~{if (unit_igs) then "--unitigs" else ""} \
      ~{if (to_fast_a) then "--to-fasta" else ""} \
      ~{if (enumerate) then "--enumerate" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/metagraph:0.2.0--h74b8f77_0"
  }
  parameter_meta {
    min_count: "[INT]            min k-mer abundance, including [1]"
    max_count: "[INT]            max k-mer abundance, excluding [inf]"
    num_singletons: "[INT]       reset the number of count 1 k-mers in histogram (0: off) [0]"
    prune_tips: "[INT]           prune all dead ends shorter than this value [1]"
    prune_unit_igs: "[INT]        prune all unitigs with median k-mer counts smaller\\nthan this value (0: auto) [1]"
    fall_back: "[INT]             fallback threshold if the automatic one cannot be\\ndetermined (-1: disables fallback) [1]"
    count_bins_q: "[FLOAT ...]   binning quantiles for partitioning k-mers with\\ndifferent abundance levels ['0 1']\\nExample: --count-bins-q '0 0.33 0.66 1'"
    unit_igs: "extract unitigs instead of contigs [off]"
    to_fast_a: "dump clean sequences to compressed FASTA file [off]"
    enumerate: "enumerate sequences in FASTA [off]"
    verbose: "switch on verbose output [off]"
    o: ""
    graph: ""
  }
  output {
    File out_stdout = stdout()
  }
}