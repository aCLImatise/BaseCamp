version 1.0

task Trimlowabundpy {
  input {
    Boolean? info
    Int? k_size
    Int? unique_km_ers
    String? fp_rate
    Int? max_memory_usage
    Boolean? small_count
    Int? cut_off
    Int? trim_at_coverage
    File? only_output_file
    Boolean? variable_coverage
    File? load_graph
    File? save_graph
    String? summary_info
    Boolean? ignore_pairs
    Directory? tempdir
    Boolean? gzip
    Boolean? bzip
    Boolean? digi_norm
    Int? digi_norm_coverage
    Boolean? single_pass
    String input_filenames
  }
  command <<<
    trim_low_abund_py \
      ~{input_filenames} \
      ~{if (info) then "--info" else ""} \
      ~{if defined(k_size) then ("--ksize " +  '"' + k_size + '"') else ""} \
      ~{if defined(unique_km_ers) then ("--unique-kmers " +  '"' + unique_km_ers + '"') else ""} \
      ~{if defined(fp_rate) then ("--fp-rate " +  '"' + fp_rate + '"') else ""} \
      ~{if defined(max_memory_usage) then ("--max-memory-usage " +  '"' + max_memory_usage + '"') else ""} \
      ~{if (small_count) then "--small-count" else ""} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if defined(trim_at_coverage) then ("--trim-at-coverage " +  '"' + trim_at_coverage + '"') else ""} \
      ~{if defined(only_output_file) then ("--output " +  '"' + only_output_file + '"') else ""} \
      ~{if (variable_coverage) then "--variable-coverage" else ""} \
      ~{if defined(load_graph) then ("--loadgraph " +  '"' + load_graph + '"') else ""} \
      ~{if defined(save_graph) then ("--savegraph " +  '"' + save_graph + '"') else ""} \
      ~{if defined(summary_info) then ("--summary-info " +  '"' + summary_info + '"') else ""} \
      ~{if (ignore_pairs) then "--ignore-pairs" else ""} \
      ~{if defined(tempdir) then ("--tempdir " +  '"' + tempdir + '"') else ""} \
      ~{if (gzip) then "--gzip" else ""} \
      ~{if (bzip) then "--bzip" else ""} \
      ~{if (digi_norm) then "--diginorm" else ""} \
      ~{if defined(digi_norm_coverage) then ("--diginorm-coverage " +  '"' + digi_norm_coverage + '"') else ""} \
      ~{if (single_pass) then "--single-pass" else ""}
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
    cut_off: "remove k-mers below this abundance (default: 2)"
    trim_at_coverage: "trim reads when entire read above this coverage\\n(default: 20)"
    only_output_file: "only output a single file with the specified filename;\\nuse a single dash \\\"-\\\" to specify that output should go\\nto STDOUT (the terminal) (default: None)"
    variable_coverage: "Only trim low-abundance k-mers from sequences that\\nhave high coverage. (default: False)"
    load_graph: "load a precomputed k-mer graph from disk (default:\\nNone)"
    save_graph: "save the k-mer countgraph to disk after allreads are\\nloaded. (default: )"
    summary_info: "What format should the machine readable run summary be\\nin? (`json` or `tsv`, disabled by default) (default:\\nNone)"
    ignore_pairs: "treat all reads as if they were singletons (default:\\nFalse)"
    tempdir: "Set location of temporary directory for second pass\\n(default: ./)"
    gzip: "Compress output using gzip (default: False)"
    bzip: "Compress output using bzip2 (default: False)"
    digi_norm: "Eliminate high-coverage reads altogether (digital\\nnormalization). (default: False)"
    digi_norm_coverage: "Coverage threshold for --diginorm (default: 20)"
    single_pass: "Do not do a second pass across the low coverage data\\n(default: False)"
    input_filenames: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
    File out_only_output_file = "${in_only_output_file}"
  }
}