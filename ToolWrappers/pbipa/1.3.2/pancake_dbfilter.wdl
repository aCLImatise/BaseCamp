version 1.0

task PancakeDbfilter {
  input {
    Boolean? sampling
    Boolean? sample_bases
    Boolean? block_size
    Boolean? random_seed
    Boolean? filter_list
    Boolean? filter_type
    Boolean? consolidate
    Boolean? compression
    Boolean? buffer_size
    Boolean? split_blocks
    Boolean? num_threads
    Boolean? log_level
    Boolean? log_file
    String in_prefix
    String out_prefix
  }
  command <<<
    pancake dbfilter \
      ~{in_prefix} \
      ~{out_prefix} \
      ~{if (sampling) then "--sampling" else ""} \
      ~{if (sample_bases) then "--sample-bases" else ""} \
      ~{if (block_size) then "--block-size" else ""} \
      ~{if (random_seed) then "--random-seed" else ""} \
      ~{if (filter_list) then "--filter-list" else ""} \
      ~{if (filter_type) then "--filter-type" else ""} \
      ~{if (consolidate) then "--consolidate" else ""} \
      ~{if (compression) then "--compression" else ""} \
      ~{if (buffer_size) then "--buffer-size" else ""} \
      ~{if (split_blocks) then "--split-blocks" else ""} \
      ~{if (num_threads) then "--num-threads" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_file) then "--log-file" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pbipa:1.3.2--hee625c5_0"
  }
  parameter_meta {
    sampling: "STR    Select sampling type: none, linear, random. Valid choices: (none, linear, random). [none]"
    sample_bases: "INT    Number of bases to sample. [0]"
    block_size: "FLOAT  Block size in megabases. Value 0 means one sequnece per block, value < 0 all sequences in\\none block. [1000]"
    random_seed: "INT    Random seed for sampling. [-1]"
    filter_list: "STR    A text file containing headers of blacklisted sequences, one per line."
    filter_type: "STR    Select from: whitelist, blacklist, none. Valid choices: (none, whitelist, blacklist). [none]"
    consolidate: "Create the new data files in addition to filtering the DB."
    compression: "INT    Compression level for output sequences. [1]"
    buffer_size: "FLOAT  Sequence buffer size in megabytes. Has to be >= 0.0. [1000]"
    split_blocks: "Write seeds for each block into a separate file."
    num_threads: "INT    Number of threads to use, 0 means autodetection. [0]"
    log_level: "STR    Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]"
    log_file: "FILE   Log to a file, instead of stderr."
    in_prefix: "STR    The prefix of the input DB files."
    out_prefix: "STR    The prefix of the output DB files."
  }
  output {
    File out_stdout = stdout()
  }
}