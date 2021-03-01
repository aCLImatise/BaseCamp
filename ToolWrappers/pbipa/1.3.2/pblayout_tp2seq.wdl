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
      ~{if (use_seq_ids) then "--use-seq-ids" else ""} \
      ~{if (use_hpc) then "--use-hpc" else ""} \
      ~{if (realign) then "--realign" else ""} \
      ~{if (batch_mb) then "--batch-mb" else ""} \
      ~{if (num_threads) then "--num-threads" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_file) then "--log-file" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pbipa:1.3.2--hee625c5_0"
  }
  parameter_meta {
    use_seq_ids: "The input tiling path contains sequence IDs instead of read names."
    use_hpc: "Assumes that the input tiling paths were constructed in the homopolymer-compressed space,\\nand expands the sequences during sequence construction."
    realign: "Realigns the tiling path edges to improve tiling coordinates."
    batch_mb: "INT   Batch size in Mbp. Reads for a batch of contigs are loaded at once so that all reads total\\nin roughly this size. [1000]"
    num_threads: "INT   Number of threads to use, 0 means autodetection. [0]"
    log_level: "STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]"
    log_file: "FILE  Log to a file, instead of stderr."
    in_reads_fn: "STR   Path to a SeqDB file with reads which will be used to compose the sequences."
    in_tiling_path_fn: "STR   Path to a TilingPath file."
    out_fn: "STR   Output FASTA filename."
  }
  output {
    File out_stdout = stdout()
  }
}