version 1.0

task Albatradis {
  input {
    Int? span_gaps
    Int? iterations
    Int? minimum_block
    Int? minimum_log_fc
    Float? minimum_log_cpm
    Int? minimum_threshold
    Float? minimum_proportion_insertions
    Boolean? dont_normalise_plots
    Directory? prefix
    Float? p_value
    Float? q_value
    Boolean? strict_signal
    Boolean? use_annotation
    Int? prime_feature_size
    Int? window_interval
    Int? window_size
    Boolean? verbose
    Boolean? debug
    String embl_file
    String plot_files
  }
  command <<<
    albatradis \
      ~{embl_file} \
      ~{plot_files} \
      ~{if defined(span_gaps) then ("--span_gaps " +  '"' + span_gaps + '"') else ""} \
      ~{if defined(iterations) then ("--iterations " +  '"' + iterations + '"') else ""} \
      ~{if defined(minimum_block) then ("--minimum_block " +  '"' + minimum_block + '"') else ""} \
      ~{if defined(minimum_log_fc) then ("--minimum_logfc " +  '"' + minimum_log_fc + '"') else ""} \
      ~{if defined(minimum_log_cpm) then ("--minimum_logcpm " +  '"' + minimum_log_cpm + '"') else ""} \
      ~{if defined(minimum_threshold) then ("--minimum_threshold " +  '"' + minimum_threshold + '"') else ""} \
      ~{if defined(minimum_proportion_insertions) then ("--minimum_proportion_insertions " +  '"' + minimum_proportion_insertions + '"') else ""} \
      ~{if (dont_normalise_plots) then "--dont_normalise_plots" else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(p_value) then ("--pvalue " +  '"' + p_value + '"') else ""} \
      ~{if defined(q_value) then ("--qvalue " +  '"' + q_value + '"') else ""} \
      ~{if (strict_signal) then "--strict_signal" else ""} \
      ~{if (use_annotation) then "--use_annotation" else ""} \
      ~{if defined(prime_feature_size) then ("--prime_feature_size " +  '"' + prime_feature_size + '"') else ""} \
      ~{if defined(window_interval) then ("--window_interval " +  '"' + window_interval + '"') else ""} \
      ~{if defined(window_size) then ("--window_size " +  '"' + window_size + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    span_gaps: "Span a gap if it is this multiple of a window size\\n(default: 1)"
    iterations: "No. of times to rescan (default: 1)"
    minimum_block: "Minimum number of reads which must be in 1 block in\\ncomparison (default: 100)"
    minimum_log_fc: "Minimum log fold change +/- (default: 1)"
    minimum_log_cpm: "Minimum log counts per million +/- (default: 8.0)"
    minimum_threshold: "Only include insert sites with this number or greater\\ninsertions (default: 5)"
    minimum_proportion_insertions: "If the proportion of insertions is too low compared to\\ncontrol, dont call decreased insertions below this\\nlevel (default: 0.1)"
    dont_normalise_plots: "Dont normalise input plots (default: False)"
    prefix: "Output directory prefix (default: output)"
    p_value: "Dont report anything above this p-value (default:\\n0.05)"
    q_value: "Dont report anything above this q-value (default:\\n0.05)"
    strict_signal: "A result must be present in the combined plots to be\\nreturned (default: False)"
    use_annotation: "Use the reference annotation rather than a sliding\\nwindow (default: False)"
    prime_feature_size: "Feature size when adding 5/3 prime block when\\n--use_annotation (default: 198)"
    window_interval: "Window interval (default: 25)"
    window_size: "Window size (default: 100)"
    verbose: "Print out more information about the analysis while it\\nruns (default: False)"
    debug: "Turn on debugging (default: False)"
    embl_file: "Annotation file in EMBL format"
    plot_files: "Input plot files (optionally gzipped). There must be\\nan equal number of condition and control files"
  }
  output {
    File out_stdout = stdout()
    Directory out_prefix = "${in_prefix}"
  }
}