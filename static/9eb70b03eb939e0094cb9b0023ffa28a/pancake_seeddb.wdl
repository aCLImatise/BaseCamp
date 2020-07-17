version 1.0

task PancakeSeeddb {
  input {
    Boolean? split_blocks
    Boolean? km_er_size
    Boolean? window
    Boolean? space
    Boolean? use_hpc
    Boolean? max_hpc_len
    Boolean? no_rc
    Boolean? num_threads
    Boolean? log_level
    Boolean? log_file
    String input_dot_seq_db
    String prefix
  }
  command <<<
    pancake seeddb \
      ~{input_dot_seq_db} \
      ~{prefix} \
      ~{true="--split-blocks" false="" split_blocks} \
      ~{true="--kmer-size" false="" km_er_size} \
      ~{true="--window" false="" window} \
      ~{true="--space" false="" space} \
      ~{true="--use-hpc" false="" use_hpc} \
      ~{true="--max-hpc-len" false="" max_hpc_len} \
      ~{true="--no-rc" false="" no_rc} \
      ~{true="--num-threads" false="" num_threads} \
      ~{true="--log-level" false="" log_level} \
      ~{true="--log-file" false="" log_file}
  >>>
  parameter_meta {
    split_blocks: "Write seeds for each block into a separate file."
    km_er_size: "INT   Kmer size for indexing. [30]"
    window: "INT   Minimizer window size for indexing. [80]"
    space: "INT   Seed spacing. [0]"
    use_hpc: "Enable homopolymer compression."
    max_hpc_len: "INT   Maximum length of a homopolymer to compress. [10]"
    no_rc: "Do not produce seeds from the reverse complement strand."
    num_threads: "INT   Number of threads to use, 0 means autodetection. [0]"
    log_level: "STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]"
    log_file: "FILE  Log to a file, instead of stderr."
    input_dot_seq_db: "STR   Path to the SeqDB to process."
    prefix: "STR   The prefix of the output SeedDB files."
  }
}