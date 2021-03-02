version 1.0

task PblayoutVariants {
  input {
    Boolean? alias_seq_db
    Boolean? max_in_del_len
    Boolean? min_coverage
    Boolean? max_alleles
    Boolean? mask_diff_window
    Boolean? num_rss_iterations
    Boolean? phase
    Boolean? batch
    Boolean? write_rss_ascii
    Boolean? debug_verbose
    Boolean? prefix
    Boolean? num_threads
    Boolean? log_level
    Boolean? log_file
    String in_fn
    String ids_dot
  }
  command <<<
    pblayout variants \
      ~{in_fn} \
      ~{ids_dot} \
      ~{if (alias_seq_db) then "--alias-seqdb" else ""} \
      ~{if (max_in_del_len) then "--max-indel-len" else ""} \
      ~{if (min_coverage) then "--min-coverage" else ""} \
      ~{if (max_alleles) then "--max-alleles" else ""} \
      ~{if (mask_diff_window) then "--mask-diff-window" else ""} \
      ~{if (num_rss_iterations) then "--num-rss-iterations" else ""} \
      ~{if (phase) then "--phase" else ""} \
      ~{if (batch) then "--batch" else ""} \
      ~{if (write_rss_ascii) then "--write-rss-ascii" else ""} \
      ~{if (debug_verbose) then "--debug-verbose" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (num_threads) then "--num-threads" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_file) then "--log-file" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pbipa:1.3.2--hee625c5_0"
  }
  parameter_meta {
    alias_seq_db: "STR   If provided, read names will be looked up in the SeqDB index cache to determine their"
    max_in_del_len: "INT   Indels above this length will be masked and not used for error correction and variant\\ncalling, and they won't contribute to the consensus. [10000000]"
    min_coverage: "INT   Minimum coverage of a pile for phasing. [6]"
    max_alleles: "INT   Ignore variant sites with more alleles than this value. If <= 0 no thresholding is\\napplied. [2]"
    mask_diff_window: "INT   If two or more diffs are within this many bases from each other, mask them. [0]"
    num_rss_iterations: "INT   Number of times to repeat NumRss beyond the first. [0]"
    phase: "Run the phasing. Write <out_prefix>.keepers.ovl and .scraps.ovl"
    batch: "INT   Number of piles to load in a batch. [1000]"
    write_rss_ascii: "Write the read similarity scores in ASCII format instead of binary."
    debug_verbose: "Prints out extremely verbose debug information."
    prefix: "STR   Prefix of the output files. Two files will be written: {out_prefix}.ovl and\\n{out_prefix}.(ascii|binary).rss [pblayout]"
    num_threads: "INT   Number of threads to use, 0 means autodetection. [0]"
    log_level: "STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]"
    log_file: "FILE  Log to a file, instead of stderr."
    in_fn: "STR   Path to a file in IPAOvl format."
    ids_dot: "--min-allele-count    INT   Maximum number of times a diff can occur in a pile to call it an error. Threshold is"
  }
  output {
    File out_stdout = stdout()
  }
}