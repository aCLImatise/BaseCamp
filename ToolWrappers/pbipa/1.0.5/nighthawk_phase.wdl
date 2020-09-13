version 1.0

task NighthawkPhase {
  input {
    Boolean? read_names_column
    Boolean? bubble_path_filter
    Boolean? filter
    Boolean? km_er_size
    Boolean? no_in_del
    Boolean? no_hpc
    Boolean? min_path_coverage
    Boolean? max_bubble_length
    Boolean? max_pile_size
    Boolean? num_threads
    Boolean? log_level
    Boolean? log_file
    String input_db
    Int input_m_four
    String scraps
  }
  command <<<
    nighthawk phase \
      ~{input_db} \
      ~{input_m_four} \
      ~{scraps} \
      ~{if (read_names_column) then "--alias" else ""} \
      ~{if (bubble_path_filter) then "--bubble-path-filter" else ""} \
      ~{if (filter) then "--filter" else ""} \
      ~{if (km_er_size) then "--kmer-size" else ""} \
      ~{if (no_in_del) then "--no-indel" else ""} \
      ~{if (no_hpc) then "--no-hpc" else ""} \
      ~{if (min_path_coverage) then "--min-path-coverage" else ""} \
      ~{if (max_bubble_length) then "--max-bubble-length" else ""} \
      ~{if (max_pile_size) then "--max-pile-size" else ""} \
      ~{if (num_threads) then "--num-threads" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_file) then "--log-file" else ""}
  >>>
  parameter_meta {
    read_names_column: "The read names (column 1&2) in the M4 file are\\nzero based numerical indices, not read names."
    bubble_path_filter: "FLOAT  Read membership in a bubble path, D =\\n(N_readKmers / N_pathKmers ). Reads greater than\\nD will be kept [0.9]"
    filter: "INT    Remove kmers with fewer than N reads covering it\\n[3]"
    km_er_size: "INT    Kmer size N, not to exceed 32, length must be\\nodd [29]"
    no_in_del: "Only use bubbles with equal path sizes"
    no_hpc: "Turn off homopolymer compression"
    min_path_coverage: "INT    Bubble paths with fewer than N reads on either\\nbranch will be filtered [2]"
    max_bubble_length: "INT    Maximum length of a bubble path [100]"
    max_pile_size: "INT    Skip phasing for piles with more than\\nmax-pile-size [1000]"
    num_threads: "INT    Number of threads to use, 0 means autodetection.\\n[0]"
    log_level: "STR    Set log level. Valid choices: (TRACE, DEBUG,\\nINFO, WARN, FATAL). [WARN]"
    log_file: "FILE   Log to a file, instead of stderr."
    input_db: "STR    Input seqDB, see pancake"
    input_m_four: "STR    Input M4 overlaps"
    scraps: "STR    Filtered m4 records"
  }
  output {
    File out_stdout = stdout()
  }
}