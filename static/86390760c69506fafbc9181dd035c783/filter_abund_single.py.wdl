version 1.0

task Filterabundsinglepy {
  input {
    Boolean? info
    Int? k_size
    Int? unique_km_ers
    String? fp_rate
    Int? max_memory_usage
    Boolean? small_count
    Int? threads
    Int? cut_off
    Boolean? variable_coverage
    Int? normalize_to
    File? save_graph
    File? outfile
    File? force
    Boolean? quiet
    Boolean? bzip
  }
  command <<<
    filter_abund_single_py \
      ~{if (info) then "--info" else ""} \
      ~{if defined(k_size) then ("--ksize " +  '"' + k_size + '"') else ""} \
      ~{if defined(unique_km_ers) then ("--unique-kmers " +  '"' + unique_km_ers + '"') else ""} \
      ~{if defined(fp_rate) then ("--fp-rate " +  '"' + fp_rate + '"') else ""} \
      ~{if defined(max_memory_usage) then ("--max-memory-usage " +  '"' + max_memory_usage + '"') else ""} \
      ~{if (small_count) then "--small-count" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if (variable_coverage) then "--variable-coverage" else ""} \
      ~{if defined(normalize_to) then ("--normalize-to " +  '"' + normalize_to + '"') else ""} \
      ~{if defined(save_graph) then ("--savegraph " +  '"' + save_graph + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
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
    threads: "Number of simultaneous threads to execute (default: 1)"
    cut_off: "Trim at k-mers below this abundance. (default: 2)"
    variable_coverage: "Only trim low-abundance k-mers from sequences that\\nhave high coverage. (default: False)"
    normalize_to: "Base the variable-coverage cutoff on this median k-mer\\nabundance. (default: 20)"
    save_graph: "If present, the name of the file to save the k-mer\\ncountgraph to (default: )"
    outfile: "Override default output filename and output trimmed\\nsequences into a file with the given filename.\\n(default: None)"
    force: "Overwrite output file if it exists (default: False)"
    quiet: "Compress output using gzip (default: False)"
    bzip: "Compress output using bzip2 (default: False)"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
    File out_force = "${in_force}"
  }
}