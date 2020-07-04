version 1.0

task DoPartition.py {
  input {
    Boolean? info
    String? k_size
    String? unique_km_ers
    String? fp_rate
    Int? max_memory_usage
    String? threads
    String? subset_size
    Boolean? no_big_traverse
    Boolean? keep_subsets
    Boolean? force
    String graph_base
    String input_sequence_filename
  }
  command <<<
    do-partition.py \
      ~{graph_base} \
      ~{input_sequence_filename} \
      ~{true="--info" false="" info} \
      ~{if defined(k_size) then ("--ksize " +  '"' + k_size + '"') else ""} \
      ~{if defined(unique_km_ers) then ("--unique-kmers " +  '"' + unique_km_ers + '"') else ""} \
      ~{if defined(fp_rate) then ("--fp-rate " +  '"' + fp_rate + '"') else ""} \
      ~{if defined(max_memory_usage) then ("--max-memory-usage " +  '"' + max_memory_usage + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(subset_size) then ("--subset-size " +  '"' + subset_size + '"') else ""} \
      ~{true="--no-big-traverse" false="" no_big_traverse} \
      ~{true="--keep-subsets" false="" keep_subsets} \
      ~{true="--force" false="" force}
  >>>
  parameter_meta {
    info: "print citation information"
    k_size: "k-mer size to use (default: 32)"
    unique_km_ers: "approximate number of unique kmers in the input set (default: 0)"
    fp_rate: "Override the automatic FP rate setting for the current script (default: None)"
    max_memory_usage: "maximum amount of memory to use for data structure (default: None)"
    threads: "Number of simultaneous threads to execute (default: 1)"
    subset_size: "Set subset size (usually 1e5-1e6 is good) (default: 100000)"
    no_big_traverse: "Truncate graph joins at big traversals (default: False)"
    keep_subsets: "Keep individual subsets (default: False)"
    force: "Overwrite output file if it exists (default: False)"
    graph_base: "base name for output files"
    input_sequence_filename: "input FAST[AQ] sequence filenames"
  }
}