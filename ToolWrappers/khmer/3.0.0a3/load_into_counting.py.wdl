version 1.0

task Loadintocountingpy {
  input {
    Boolean? info
    Int? k_size
    Int? unique_km_ers
    String? fp_rate
    Int? max_memory_usage
    Boolean? small_count
    Int? threads
    Boolean? no_big_count
    String? summary_info
    File? force
    String output_count_graph_filename
    String input_sequence_filename
    String files_dot
  }
  command <<<
    load_into_counting_py \
      ~{output_count_graph_filename} \
      ~{input_sequence_filename} \
      ~{files_dot} \
      ~{if (info) then "--info" else ""} \
      ~{if defined(k_size) then ("--ksize " +  '"' + k_size + '"') else ""} \
      ~{if defined(unique_km_ers) then ("--unique-kmers " +  '"' + unique_km_ers + '"') else ""} \
      ~{if defined(fp_rate) then ("--fp-rate " +  '"' + fp_rate + '"') else ""} \
      ~{if defined(max_memory_usage) then ("--max-memory-usage " +  '"' + max_memory_usage + '"') else ""} \
      ~{if (small_count) then "--small-count" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (no_big_count) then "--no-bigcount" else ""} \
      ~{if defined(summary_info) then ("--summary-info " +  '"' + summary_info + '"') else ""} \
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
    no_big_count: "The default behaviour is to count past 255 using\\nbigcount. This flag turns bigcount off, limiting\\ncounts to 255. (default: True)"
    summary_info: "What format should the machine readable run summary be\\nin? (`json` or `tsv`, disabled by default) (default:\\nNone)"
    force: "Overwrite output file if it exists (default: False)"
    output_count_graph_filename: "The name of the file to write the k-mer countgraph to."
    input_sequence_filename: "The names of one or more FAST[AQ] input sequence"
    files_dot: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
    File out_force = "${in_force}"
  }
}