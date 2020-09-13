version 1.0

task Dopartitionpy {
  input {
    Boolean? info
    Int? k_size
    Int? unique_km_ers
    String? fp_rate
    Int? max_memory_usage
    Int? threads
    Int? subset_size
    Boolean? no_big_traverse
    Boolean? keep_subsets
    File? force
    String graph_base
    String input_sequence_filename
  }
  command <<<
    do_partition_py \
      ~{graph_base} \
      ~{input_sequence_filename} \
      ~{if (info) then "--info" else ""} \
      ~{if defined(k_size) then ("--ksize " +  '"' + k_size + '"') else ""} \
      ~{if defined(unique_km_ers) then ("--unique-kmers " +  '"' + unique_km_ers + '"') else ""} \
      ~{if defined(fp_rate) then ("--fp-rate " +  '"' + fp_rate + '"') else ""} \
      ~{if defined(max_memory_usage) then ("--max-memory-usage " +  '"' + max_memory_usage + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(subset_size) then ("--subset-size " +  '"' + subset_size + '"') else ""} \
      ~{if (no_big_traverse) then "--no-big-traverse" else ""} \
      ~{if (keep_subsets) then "--keep-subsets" else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  parameter_meta {
    info: "print citation information"
    k_size: "k-mer size to use (default: 32)"
    unique_km_ers: "approximate number of unique kmers in the input set\\n(default: 0)"
    fp_rate: "Override the automatic FP rate setting for the current\\nscript (default: None)"
    max_memory_usage: "maximum amount of memory to use for data structure\\n(default: None)"
    threads: "Number of simultaneous threads to execute (default: 1)"
    subset_size: "Set subset size (usually 1e5-1e6 is good) (default:\\n100000)"
    no_big_traverse: "Truncate graph joins at big traversals (default:\\nFalse)"
    keep_subsets: "Keep individual subsets (default: False)"
    force: "Overwrite output file if it exists (default: False)"
    graph_base: "base name for output files"
    input_sequence_filename: "input FAST[AQ] sequence filenames"
  }
  output {
    File out_stdout = stdout()
    File out_force = "${in_force}"
  }
}