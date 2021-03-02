version 1.0

task NighthawkSplit {
  input {
    Boolean? split_type
    Boolean? limit
    Boolean? num_threads
    Boolean? log_level
    Boolean? log_file
    String chunk_prefix
    Int input_do_tm_four
  }
  command <<<
    nighthawk split \
      ~{chunk_prefix} \
      ~{input_do_tm_four} \
      ~{if (split_type) then "--split-type" else ""} \
      ~{if (limit) then "--limit" else ""} \
      ~{if (num_threads) then "--num-threads" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_file) then "--log-file" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pbipa:1.3.2--hee625c5_0"
  }
  parameter_meta {
    split_type: "STR   Type of splitting to perform. Valid choices: (nfiles, ovlpiles, noverlaps). [ovlpiles]"
    limit: "INT   Number of files when split-type is 'nfiles', or number of piles when split-type is\\n'ovlpiles'. [1000]"
    num_threads: "INT   Number of threads to use, 0 means autodetection. [0]"
    log_level: "STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]"
    log_file: "FILE  Log to a file, instead of stderr."
    chunk_prefix: "STR   Output M4 files."
    input_do_tm_four: "STR   Input M4/overlap file to split."
  }
  output {
    File out_stdout = stdout()
  }
}