version 1.0

task Makeinitialstoptagspy {
  input {
    Boolean? info
    Int? k_size
    Int? unique_km_ers
    String? fp_rate
    Int? max_memory_usage
    Boolean? small_count
    Int? subset_size
    File? stop_tags
    File? force
  }
  command <<<
    make_initial_stoptags_py \
      ~{if (info) then "--info" else ""} \
      ~{if defined(k_size) then ("--ksize " +  '"' + k_size + '"') else ""} \
      ~{if defined(unique_km_ers) then ("--unique-kmers " +  '"' + unique_km_ers + '"') else ""} \
      ~{if defined(fp_rate) then ("--fp-rate " +  '"' + fp_rate + '"') else ""} \
      ~{if defined(max_memory_usage) then ("--max-memory-usage " +  '"' + max_memory_usage + '"') else ""} \
      ~{if (small_count) then "--small-count" else ""} \
      ~{if defined(subset_size) then ("--subset-size " +  '"' + subset_size + '"') else ""} \
      ~{if defined(stop_tags) then ("--stoptags " +  '"' + stop_tags + '"') else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    info: "print citation information"
    k_size: "k-mer size to use (default: 32)"
    unique_km_ers: "approximate number of unique kmers in the input set\\n(default: 0)"
    fp_rate: "Override the automatic FP rate setting for the current\\nscript (default: None)"
    max_memory_usage: "maximum amount of memory to use for data structure\\n(default: None)"
    small_count: "Reduce memory usage by using a smaller counter for\\nindividual kmers. (default: False)"
    subset_size: "Set subset size (default 1e4 is prob ok) (default:\\n10000)"
    stop_tags: "Use stoptags in this file during partitioning\\n(default: )"
    force: "Overwrite output file if it exists (default: False)"
  }
  output {
    File out_stdout = stdout()
    File out_force = "${in_force}"
  }
}