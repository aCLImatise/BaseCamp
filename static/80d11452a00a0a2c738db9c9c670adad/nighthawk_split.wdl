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
    docker: "None"
  }
  parameter_meta {
    split_type: "STR   Type of splitting to perform. Valid choices: (nfiles,\\novlpiles, noverlaps). [ovlpiles]"
    limit: "INT   Number of files when split-type is 'nfiles', or\\nnumber of piles when split-type is 'ovlpiles'. [1000]"
    num_threads: "INT   Number of threads to use, 0 means autodetection. [0]"
    log_level: "STR   Set log level. Valid choices: (TRACE, DEBUG, INFO,\\nWARN, FATAL). [WARN]"
    log_file: "FILE  Log to a file, instead of stderr."
    chunk_prefix: "STR   Output M4 files."
    input_do_tm_four: "STR   Input M4/overlap file to split."
  }
  output {
    File out_stdout = stdout()
  }
}