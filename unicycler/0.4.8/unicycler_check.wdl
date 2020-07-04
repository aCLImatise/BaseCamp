version 1.0

task UnicyclerCheck {
  input {
    String? sam
    String? ref
    String? reads
    Int? min_len
    String? error_window_size
    String? depth_window_size
    String? error_rate_threshold
    String? depth_p_val
    String? window_tables
    String? base_tables
    String? html
    String? threads
    String? verbosity
  }
  command <<<
    unicycler_check \
      ~{if defined(sam) then ("--sam " +  '"' + sam + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(reads) then ("--reads " +  '"' + reads + '"') else ""} \
      ~{if defined(min_len) then ("--min_len " +  '"' + min_len + '"') else ""} \
      ~{if defined(error_window_size) then ("--error_window_size " +  '"' + error_window_size + '"') else ""} \
      ~{if defined(depth_window_size) then ("--depth_window_size " +  '"' + depth_window_size + '"') else ""} \
      ~{if defined(error_rate_threshold) then ("--error_rate_threshold " +  '"' + error_rate_threshold + '"') else ""} \
      ~{if defined(depth_p_val) then ("--depth_p_val " +  '"' + depth_p_val + '"') else ""} \
      ~{if defined(window_tables) then ("--window_tables " +  '"' + window_tables + '"') else ""} \
      ~{if defined(base_tables) then ("--base_tables " +  '"' + base_tables + '"') else ""} \
      ~{if defined(html) then ("--html " +  '"' + html + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    sam: "Input SAM file of alignments (if this file doesn't exist, the alignment will be performed with results saved to this file - you can use the aligner arguments with this script)"
    ref: "FASTA file containing one or more reference sequences"
    reads: "FASTQ file of long reads"
    min_len: "Minimum alignment length (bp) - exclude alignments shorter than this length (default: 100)"
    error_window_size: "Window size for error summaries (default: 100)"
    depth_window_size: "Window size for depth summaries (default: 100)"
    error_rate_threshold: "Threshold for high error rates, expressed as the fraction between the mean error rate and the random alignment error rate (default: 0.3)"
    depth_p_val: "P-value for low/high depth thresholds (default: 0.001)"
    window_tables: "Path and/or prefix for table files summarising reference errors for reference windows (default: do not save window tables)"
    base_tables: "Path and/or prefix for table files summarising reference errors at each base (default: do not save base tables)"
    html: "Path for HTML report (default: do not save HTML report)"
    threads: "Number of CPU threads used to align (default: the number of available CPUs)"
    verbosity: "Level of stdout information (0 to 2) (default: 1)"
  }
}