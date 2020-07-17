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
    String pancake
    String prefix
  }
  command <<<
    pancake seqdb \
      ~{pancake} \
      ~{prefix} \
      ~{true="--compression" false="" compression} \
      ~{true="--buffer-size" false="" buffer_size} \
      ~{true="--block-size" false="" block_size} \
      ~{true="--split-blocks" false="" split_blocks} \
      ~{true="--num-threads" false="" num_threads} \
      ~{true="--log-level" false="" log_level} \
      ~{true="--log-file" false="" log_file}
  >>>
  parameter_meta {
    compression: "INT    Compression level for output sequences. [1]"
    buffer_size: "FLOAT  Sequence buffer size in megabytes. Has to be >= 0.0. [1000]"
    block_size: "FLOAT  Block size in megabases. Value 0 means one sequnece per block, value < 0 all sequences in one block. [1000]"
    split_blocks: "Write seeds for each block into a separate file."
    num_threads: "INT    Number of threads to use, 0 means autodetection. [0]"
    log_level: "STR    Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]"
    log_file: "FILE   Log to a file, instead of stderr."
    pancake: ""
    prefix: ""
  }
}