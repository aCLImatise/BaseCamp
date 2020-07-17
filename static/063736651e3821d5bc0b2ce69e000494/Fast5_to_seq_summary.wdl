version 1.0

task Fast5ToSeqSummary {
  input {
    String? fast_five_dir
    String? seq_summary_fn
    Int? max_fast_five
    String? threads
    String? base_call_id
    Array[String] fields
    Boolean? include_path
    String? verbose_level
  }
  command <<<
    Fast5_to_seq_summary \
      ~{if defined(fast_five_dir) then ("--fast5_dir " +  '"' + fast_five_dir + '"') else ""} \
      ~{if defined(seq_summary_fn) then ("--seq_summary_fn " +  '"' + seq_summary_fn + '"') else ""} \
      ~{if defined(max_fast_five) then ("--max_fast5 " +  '"' + max_fast_five + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(base_call_id) then ("--basecall_id " +  '"' + base_call_id + '"') else ""} \
      ~{if defined(fields) then ("--fields " +  '"' + fields + '"') else ""} \
      ~{true="--include_path" false="" include_path} \
      ~{if defined(verbose_level) then ("--verbose_level " +  '"' + verbose_level + '"') else ""}
  >>>
  parameter_meta {
    fast_five_dir: "Directory containing fast5 files. Can contain multiple subdirectories"
    seq_summary_fn: "path of the summary sequencing file where to write the data extracted from the fast5 files"
    max_fast_five: "Maximum number of file to try to parse. 0 to deactivate (default: 0)"
    threads: "Total number of threads to use. 1 thread is used for the reader and 1 for the writer. Minimum 3 (default: 4)"
    base_call_id: "id of the basecalling group. By default leave to 0, but if you perfome multiple basecalling on the same fast5 files, this can be used to indicate the corresponding group (1, 2 ...) (default: 0)"
    fields: "list of field names corresponding to attributes to try to fetch from the fast5 files (default: ['read_id', 'run_id', 'channel', 'start_time', 'sequence_length_template', 'mean_qscore_template', 'calibration_strand_genome_template', 'barcode_arrangement'])"
    include_path: "If given, the absolute path to the corresponding file is added in an extra column (default: False)"
    verbose_level: "Level of verbosity, from 2 (Chatty) to 0 (Nothing) (default: 0)"
  }
}