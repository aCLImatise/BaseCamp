version 1.0

task PancakeSeqdb {
  input {
    Boolean? compression
    Boolean? buffer_size
    Boolean? block_size
    Boolean? split_blocks
    Boolean? num_threads
    Boolean? log_level
    Boolean? log_file
    String prefix
  }
  command <<<
    pancake seqdb \
      ~{prefix} \
      ~{if (compression) then "--compression" else ""} \
      ~{if (buffer_size) then "--buffer-size" else ""} \
      ~{if (block_size) then "--block-size" else ""} \
      ~{if (split_blocks) then "--split-blocks" else ""} \
      ~{if (num_threads) then "--num-threads" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_file) then "--log-file" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pbipa:1.3.2--hee625c5_0"
  }
  parameter_meta {
    compression: "INT    Compression level for output sequences. [1]"
    buffer_size: "FLOAT  Sequence buffer size in megabytes. Has to be >= 0.0. [1000]"
    block_size: "FLOAT  Block size in megabases. Value 0 means one sequnece per block, value < 0 all sequences in\\none block. [1000]"
    split_blocks: "Write seeds for each block into a separate file."
    num_threads: "INT    Number of threads to use, 0 means autodetection. [0]"
    log_level: "STR    Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]"
    log_file: "FILE   Log to a file, instead of stderr."
    prefix: "STR    The prefix of the DB files."
  }
  output {
    File out_stdout = stdout()
  }
}