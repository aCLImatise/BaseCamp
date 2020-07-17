version 1.0

task NormalizeByMedian.py {
  input {
    String? cut_off
    Boolean? paired
    Boolean? force_single
    String? unpaired_reads
    File? save_graph
    String? report
    String? report_frequency
    Boolean? force
    File? only_output_file
    File? load_graph
    Boolean? gzip
    Boolean? bzip
    Boolean? info
    String? k
    String input_sequence_filename
  }
  command <<<
    normalize-by-median.py \
      ~{input_sequence_filename} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{true="--paired" false="" paired} \
      ~{true="--force_single" false="" force_single} \
      ~{if defined(unpaired_reads) then ("--unpaired-reads " +  '"' + unpaired_reads + '"') else ""} \
      ~{if defined(save_graph) then ("--savegraph " +  '"' + save_graph + '"') else ""} \
      ~{if defined(report) then ("--report " +  '"' + report + '"') else ""} \
      ~{if defined(report_frequency) then ("--report-frequency " +  '"' + report_frequency + '"') else ""} \
      ~{true="--force" false="" force} \
      ~{if defined(only_output_file) then ("--output " +  '"' + only_output_file + '"') else ""} \
      ~{if defined(load_graph) then ("--loadgraph " +  '"' + load_graph + '"') else ""} \
      ~{true="--gzip" false="" gzip} \
      ~{true="--bzip" false="" bzip} \
      ~{true="--info" false="" info} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""}
  >>>
  parameter_meta {
    cut_off: "when the median k-mer coverage level is above this number the read is not kept. (default: 20)"
    paired: "require that all sequences be properly paired (default: False)"
    force_single: "treat all sequences as single-ended/unpaired (default: False)"
    unpaired_reads: "include a file of unpaired reads to which -p/--paired does not apply. (default: None)"
    save_graph: "save the k-mer countgraph to disk after all reads are loaded. (default: None)"
    report: "write progress report to report_filename (default: None)"
    report_frequency: "report progress every report_frequency reads (default: 100000)"
    force: "continue past file reading errors (default: False)"
    only_output_file: "only output a single file with the specified filename; use a single dash \"-\" to specify that output should go to STDOUT (the terminal) (default: None)"
    load_graph: "load a precomputed k-mer graph from disk (default: None)"
    gzip: "Compress output using gzip (default: False)"
    bzip: "Compress output using bzip2 (default: False)"
    info: ""
    k: ""
    input_sequence_filename: "Input FAST[AQ] sequence filename."
  }
}