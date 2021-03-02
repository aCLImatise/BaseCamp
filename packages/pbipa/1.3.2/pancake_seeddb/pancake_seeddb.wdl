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
      ~{if (split_blocks) then "--split-blocks" else ""} \
      ~{if (km_er_size) then "--kmer-size" else ""} \
      ~{if (window) then "--window" else ""} \
      ~{if (space) then "--space" else ""} \
      ~{if (use_hpc) then "--use-hpc" else ""} \
      ~{if (max_hpc_len) then "--max-hpc-len" else ""} \
      ~{if (no_rc) then "--no-rc" else ""} \
      ~{if (num_threads) then "--num-threads" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_file) then "--log-file" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pbipa:1.3.2--hee625c5_0"
  }
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
  output {
    File out_stdout = stdout()
  }
}