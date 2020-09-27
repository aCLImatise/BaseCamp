version 1.0

task PancakeSeqfetch {
  input {
    Boolean? out_fmt
    Boolean? dummy_qv
    Boolean? str_seqdb_file
    Boolean? fail
    Boolean? write_ids
    Boolean? use_hpc
    Boolean? use_rle
    Boolean? log_level
    Boolean? log_file
    String out_fn
    String fetch_list
    String formats_dot
  }
  command <<<
    pancake seqfetch \
      ~{out_fn} \
      ~{fetch_list} \
      ~{formats_dot} \
      ~{if (out_fmt) then "--out-fmt" else ""} \
      ~{if (dummy_qv) then "--dummy-qv" else ""} \
      ~{if (str_seqdb_file) then "--alias" else ""} \
      ~{if (fail) then "--fail" else ""} \
      ~{if (write_ids) then "--write-ids" else ""} \
      ~{if (use_hpc) then "--use-hpc" else ""} \
      ~{if (use_rle) then "--use-rle" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_file) then "--log-file" else ""}
  >>>
  parameter_meta {
    out_fmt: "STR   Output format. If an input file is FASTA and out format is FASTQ, dummy QVs\\nwill be added. Valid choices: (fasta, fastq). [fasta]"
    dummy_qv: "STR   Dummy QV to be added to sequences when input format is FASTA and output\\nFASTQ. [!]"
    str_seqdb_file: "STR   SeqDB file path. If provided, the SeqDB will be used to look-up the\\nprovided sequences by their IDs."
    fail: "Exit non-zero if not all seqs are found."
    write_ids: "The output sequence names will be replaced by their IDs in the SeqDB, if\\nthe SeqDB was provided as input."
    use_hpc: "Fetch homopolymer compressed sequences."
    use_rle: "Write a run-length-encoded file alongside to the output file. The RLE file\\ncontains conversion coordinates from the HPC space to the original space\\ninstead of the run-length-encoding. This option does not write the HPC\\nsequence, for that please specify '--user-hpc'."
    log_level: "STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]"
    log_file: "FILE  Log to a file, instead of stderr."
    out_fn: "STR   Output file for the fetched sequences."
    fetch_list: "STR   List of sequences to fetch, one per line."
    formats_dot: "Algorithm Options:"
  }
  output {
    File out_stdout = stdout()
  }
}