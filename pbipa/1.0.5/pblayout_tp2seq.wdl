version 1.0

task PblayoutTp2seq {
  input {
    Boolean? use_seq_ids
    Boolean? use_hpc
    Boolean? realign
    Boolean? batch_mb
    Boolean? num_threads
    Boolean? log_level
    Boolean? log_file
    String in_reads_fn
    String in_tiling_path_fn
    String out_fn
  }
  command <<<
    pblayout tp2seq \
      ~{in_reads_fn} \
      ~{in_tiling_path_fn} \
      ~{out_fn} \
      ~{true="--use-seq-ids" false="" use_seq_ids} \
      ~{true="--use-hpc" false="" use_hpc} \
      ~{true="--realign" false="" realign} \
      ~{true="--batch-mb" false="" batch_mb} \
      ~{true="--num-threads" false="" num_threads} \
      ~{true="--log-level" false="" log_level} \
      ~{true="--log-file" false="" log_file}
  >>>
  parameter_meta {
    use_seq_ids: "The input tiling path contains sequence IDs instead of read names."
    use_hpc: "Assumes that the input tiling paths were constructed in the homopolymer-compressed space, and expands the sequences during sequence construction."
    realign: "Realigns the tiling path edges to improve tiling coordinates."
    batch_mb: "INT   Batch size in Mbp. Reads for a batch of contigs are loaded at once so that all reads total in roughly this size. [1000]"
    num_threads: "INT   Number of threads to use, 0 means autodetection. [0]"
    log_level: "STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]"
    log_file: "FILE  Log to a file, instead of stderr."
    in_reads_fn: "STR   Path to a SeqDB file with reads which will be used to compose the sequences."
    in_tiling_path_fn: "STR   Path to a TilingPath file."
    out_fn: "STR   Output FASTA filename."
  }
}