version 1.0

task Filterabundpy {
  input {
    Boolean? info
    Int? threads
    Int? cut_off
    Boolean? variable_coverage
    Int? normalize_to
    File? output_trimmed_sequences
    File? force
    Boolean? quiet
    Boolean? bzip
    String input_count_graph_filename
    String input_sequence_filename
  }
  command <<<
    filter_abund_py \
      ~{input_count_graph_filename} \
      ~{input_sequence_filename} \
      ~{if (info) then "--info" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if (variable_coverage) then "--variable-coverage" else ""} \
      ~{if defined(normalize_to) then ("--normalize-to " +  '"' + normalize_to + '"') else ""} \
      ~{if defined(output_trimmed_sequences) then ("--output " +  '"' + output_trimmed_sequences + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (bzip) then "--bzip" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    info: "print citation information"
    threads: "Number of simultaneous threads to execute (default: 1)"
    cut_off: "Trim at k-mers below this abundance. (default: 2)"
    variable_coverage: "Only trim low-abundance k-mers from sequences that\\nhave high coverage. (default: False)"
    normalize_to: "Base the variable-coverage cutoff on this median k-mer\\nabundance. (default: 20)"
    output_trimmed_sequences: "Output the trimmed sequences into a single file with\\nthe given filename instead of creating a new file for\\neach input file. (default: None)"
    force: "Overwrite output file if it exists (default: False)"
    quiet: "Compress output using gzip (default: False)"
    bzip: "Compress output using bzip2 (default: False)"
    input_count_graph_filename: "The input k-mer countgraph filename"
    input_sequence_filename: "Input FAST[AQ] sequence filename"
  }
  output {
    File out_stdout = stdout()
    File out_output_trimmed_sequences = "${in_output_trimmed_sequences}"
    File out_force = "${in_force}"
  }
}