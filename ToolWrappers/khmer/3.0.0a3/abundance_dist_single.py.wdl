version 1.0

task Abundancedistsinglepy {
  input {
    Boolean? info
    Int? k_size
    Int? unique_km_ers
    String? fp_rate
    Int? max_memory_usage
    Boolean? small_count
    Int? threads
    Boolean? no_zero
    Boolean? no_big_count
    File? squash
    File? save_graph
    Boolean? force
    String output_histogram_filename
  }
  command <<<
    abundance_dist_single_py \
      ~{output_histogram_filename} \
      ~{if (info) then "--info" else ""} \
      ~{if defined(k_size) then ("--ksize " +  '"' + k_size + '"') else ""} \
      ~{if defined(unique_km_ers) then ("--unique-kmers " +  '"' + unique_km_ers + '"') else ""} \
      ~{if defined(fp_rate) then ("--fp-rate " +  '"' + fp_rate + '"') else ""} \
      ~{if defined(max_memory_usage) then ("--max-memory-usage " +  '"' + max_memory_usage + '"') else ""} \
      ~{if (small_count) then "--small-count" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (no_zero) then "--no-zero" else ""} \
      ~{if (no_big_count) then "--no-bigcount" else ""} \
      ~{if (squash) then "--squash" else ""} \
      ~{if defined(save_graph) then ("--savegraph " +  '"' + save_graph + '"') else ""} \
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
    threads: "Number of simultaneous threads to execute (default: 1)"
    no_zero: "Do not output zero-count bins (default: True)"
    no_big_count: "Do not count k-mers past 255 (default: True)"
    squash: "Overwrite output file if it exists (default: False)"
    save_graph: "Save the k-mer countgraph to the specified filename.\\n(default: None)"
    force: "Override sanity checks (default: False)"
    output_histogram_filename: "The name of the output histogram file. The columns\\nare: (1) k-mer abundance, (2) k-mer count, (3)\\ncumulative count, (4) fraction of total distinct\\nk-mers."
  }
  output {
    File out_stdout = stdout()
    File out_squash = "${in_squash}"
  }
}