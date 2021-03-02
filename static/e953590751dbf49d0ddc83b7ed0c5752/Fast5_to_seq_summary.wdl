version 1.0

task Fast5ToSeqSummary {
  input {
    Int? fast_five_dir
    File? seq_summary_fn
    Int? max_fast_five
    Int? threads
    Int? base_call_id
    Array[String] fields
    Boolean? include_path
    Int? verbose_level
  }
  command <<<
    Fast5_to_seq_summary \
      ~{if defined(fast_five_dir) then ("--fast5_dir " +  '"' + fast_five_dir + '"') else ""} \
      ~{if defined(seq_summary_fn) then ("--seq_summary_fn " +  '"' + seq_summary_fn + '"') else ""} \
      ~{if defined(max_fast_five) then ("--max_fast5 " +  '"' + max_fast_five + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(base_call_id) then ("--basecall_id " +  '"' + base_call_id + '"') else ""} \
      ~{if defined(fields) then ("--fields " +  '"' + fields + '"') else ""} \
      ~{if (include_path) then "--include_path" else ""} \
      ~{if defined(verbose_level) then ("--verbose_level " +  '"' + verbose_level + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_five_dir: "Directory containing fast5 files. Can contain multiple\\nsubdirectories"
    seq_summary_fn: "path of the summary sequencing file where to write the\\ndata extracted from the fast5 files"
    max_fast_five: "Maximum number of file to try to parse. 0 to\\ndeactivate (default: 0)"
    threads: "Total number of threads to use. 1 thread is used for\\nthe reader and 1 for the writer. Minimum 3 (default:\\n4)"
    base_call_id: "id of the basecalling group. By default leave to 0,\\nbut if you perfome multiple basecalling on the same\\nfast5 files, this can be used to indicate the\\ncorresponding group (1, 2 ...) (default: 0)"
    fields: "list of field names corresponding to attributes to try\\nto fetch from the fast5 files (default: ['read_id',\\n'run_id', 'channel', 'start_time',\\n'sequence_length_template', 'mean_qscore_template',\\n'calibration_strand_genome_template',\\n'barcode_arrangement'])"
    include_path: "If given, the absolute path to the corresponding file\\nis added in an extra column (default: False)"
    verbose_level: "Level of verbosity, from 2 (Chatty) to 0 (Nothing)\\n(default: 0)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}