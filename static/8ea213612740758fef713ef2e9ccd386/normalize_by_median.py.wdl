version 1.0

task Normalizebymedianpy {
  input {
    Boolean? info
    Int? k_size
    Int? unique_km_ers
    String? fp_rate
    Int? max_memory_usage
    Boolean? small_count
    Int? cut_off
    Boolean? paired
    Boolean? force_single
    File? unpaired_reads
    File? save_graph
    File? report
    Int? report_frequency
    Boolean? force
    File? only_output_file
    File? load_graph
    Boolean? gzip
    Boolean? bzip
    String input_sequence_filename
  }
  command <<<
    normalize_by_median_py \
      ~{input_sequence_filename} \
      ~{if (info) then "--info" else ""} \
      ~{if defined(k_size) then ("--ksize " +  '"' + k_size + '"') else ""} \
      ~{if defined(unique_km_ers) then ("--unique-kmers " +  '"' + unique_km_ers + '"') else ""} \
      ~{if defined(fp_rate) then ("--fp-rate " +  '"' + fp_rate + '"') else ""} \
      ~{if defined(max_memory_usage) then ("--max-memory-usage " +  '"' + max_memory_usage + '"') else ""} \
      ~{if (small_count) then "--small-count" else ""} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if (paired) then "--paired" else ""} \
      ~{if (force_single) then "--force_single" else ""} \
      ~{if defined(unpaired_reads) then ("--unpaired-reads " +  '"' + unpaired_reads + '"') else ""} \
      ~{if defined(save_graph) then ("--savegraph " +  '"' + save_graph + '"') else ""} \
      ~{if defined(report) then ("--report " +  '"' + report + '"') else ""} \
      ~{if defined(report_frequency) then ("--report-frequency " +  '"' + report_frequency + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(only_output_file) then ("--output " +  '"' + only_output_file + '"') else ""} \
      ~{if defined(load_graph) then ("--loadgraph " +  '"' + load_graph + '"') else ""} \
      ~{if (gzip) then "--gzip" else ""} \
      ~{if (bzip) then "--bzip" else ""}
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
    cut_off: "when the median k-mer coverage level is above this\\nnumber the read is not kept. (default: 20)"
    paired: "require that all sequences be properly paired\\n(default: False)"
    force_single: "treat all sequences as single-ended/unpaired (default:\\nFalse)"
    unpaired_reads: "include a file of unpaired reads to which -p/--paired\\ndoes not apply. (default: None)"
    save_graph: "save the k-mer countgraph to disk after all reads are\\nloaded. (default: None)"
    report: "write progress report to report_filename (default:\\nNone)"
    report_frequency: "report progress every report_frequency reads (default:\\n100000)"
    force: "continue past file reading errors (default: False)"
    only_output_file: "only output a single file with the specified filename;\\nuse a single dash \\\"-\\\" to specify that output should go\\nto STDOUT (the terminal) (default: None)"
    load_graph: "load a precomputed k-mer graph from disk (default:\\nNone)"
    gzip: "Compress output using gzip (default: False)"
    bzip: "Compress output using bzip2 (default: False)"
    input_sequence_filename: "Input FAST[AQ] sequence filename."
  }
  output {
    File out_stdout = stdout()
    File out_only_output_file = "${in_only_output_file}"
  }
}