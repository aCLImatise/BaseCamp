version 1.0

task UnicyclerCheck {
  input {
    File? sam
    File? ref
    Int? min_len
    Int? error_window_size
    Int? depth_window_size
    Float? error_rate_threshold
    Float? depth_p_val
    File? window_tables
    File? base_tables
    File? html
    Int? threads
    Int? verbosity
    String? reads
    String sequences
  }
  command <<<
    unicycler_check \
      ~{sequences} \
      ~{if defined(sam) then ("--sam " +  '"' + sam + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(min_len) then ("--min_len " +  '"' + min_len + '"') else ""} \
      ~{if defined(error_window_size) then ("--error_window_size " +  '"' + error_window_size + '"') else ""} \
      ~{if defined(depth_window_size) then ("--depth_window_size " +  '"' + depth_window_size + '"') else ""} \
      ~{if defined(error_rate_threshold) then ("--error_rate_threshold " +  '"' + error_rate_threshold + '"') else ""} \
      ~{if defined(depth_p_val) then ("--depth_p_val " +  '"' + depth_p_val + '"') else ""} \
      ~{if defined(window_tables) then ("--window_tables " +  '"' + window_tables + '"') else ""} \
      ~{if defined(base_tables) then ("--base_tables " +  '"' + base_tables + '"') else ""} \
      ~{if defined(html) then ("--html " +  '"' + html + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(reads) then ("--reads " +  '"' + reads + '"') else ""}
  >>>
  parameter_meta {
    sam: "Input SAM file of alignments (if this file doesn't\\nexist, the alignment will be performed with results\\nsaved to this file - you can use the aligner\\narguments with this script)"
    ref: "FASTA file containing one or more reference"
    min_len: "Minimum alignment length (bp) - exclude alignments\\nshorter than this length (default: 100)"
    error_window_size: "Window size for error summaries (default: 100)"
    depth_window_size: "Window size for depth summaries (default: 100)"
    error_rate_threshold: "Threshold for high error rates, expressed as the\\nfraction between the mean error rate and the random\\nalignment error rate (default: 0.3)"
    depth_p_val: "P-value for low/high depth thresholds (default:\\n0.001)"
    window_tables: "Path and/or prefix for table files summarising\\nreference errors for reference windows (default: do\\nnot save window tables)"
    base_tables: "Path and/or prefix for table files summarising\\nreference errors at each base (default: do not save\\nbase tables)"
    html: "Path for HTML report (default: do not save HTML\\nreport)"
    threads: "Number of CPU threads used to align (default: the\\nnumber of available CPUs)"
    verbosity: "Level of stdout information (0 to 2) (default: 1)"
    reads: ""
    sequences: "--reads READS           FASTQ file of long reads"
  }
  output {
    File out_stdout = stdout()
  }
}