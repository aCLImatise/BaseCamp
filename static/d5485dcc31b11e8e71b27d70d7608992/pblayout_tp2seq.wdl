version 1.0

task PblayoutTp2seq {
  input {
    Boolean? use_seq_ids
    Boolean? use_hpc
    Boolean? realign
    Boolean? num_threads
    Boolean? log_level
    Boolean? log_file
    String in_reads_fn
    String in_tiling_path_fn
    String out_fn
    String coordinates_dot
  }
  command <<<
    pblayout tp2seq \
      ~{in_reads_fn} \
      ~{in_tiling_path_fn} \
      ~{out_fn} \
      ~{coordinates_dot} \
      ~{if (use_seq_ids) then "--use-seq-ids" else ""} \
      ~{if (use_hpc) then "--use-hpc" else ""} \
      ~{if (realign) then "--realign" else ""} \
      ~{if (num_threads) then "--num-threads" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_file) then "--log-file" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    use_seq_ids: "The input tiling path contains sequence IDs instead\\nof read names."
    use_hpc: "Assumes that the input tiling paths were constructed\\nin the homopolymer-compressed space, and expands the\\nsequences during sequence construction."
    realign: "Realigns the tiling path edges to improve tiling"
    num_threads: "INT   Number of threads to use, 0 means autodetection. [0]"
    log_level: "STR   Set log level. Valid choices: (TRACE, DEBUG, INFO,\\nWARN, FATAL). [WARN]"
    log_file: "FILE  Log to a file, instead of stderr."
    in_reads_fn: "STR   Path to a SeqDB file with reads which will be used\\nto compose the sequences."
    in_tiling_path_fn: "STR   Path to a TilingPath file."
    out_fn: "STR   Output FASTA filename."
    coordinates_dot: "--batch-mb         INT   Batch size in Mbp. Reads for a batch of contigs are"
  }
  output {
    File out_stdout = stdout()
  }
}