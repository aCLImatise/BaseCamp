version 1.0

task DeblurRemoveartifacts {
  input {
    File? ref_fp
    File? ref_db_fp
    Boolean? negate
    Int? threads_per_sample
    Int? log_level
    File? log_file
    String seqs_fp
    String output_dir
  }
  command <<<
    deblur remove_artifacts \
      ~{seqs_fp} \
      ~{output_dir} \
      ~{if defined(ref_fp) then ("--ref-fp " +  '"' + ref_fp + '"') else ""} \
      ~{if defined(ref_db_fp) then ("--ref-db-fp " +  '"' + ref_db_fp + '"') else ""} \
      ~{if (negate) then "--negate" else ""} \
      ~{if defined(threads_per_sample) then ("--threads-per-sample " +  '"' + threads_per_sample + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  parameter_meta {
    ref_fp: "Keep all sequences aligning to this FASTA\\ndatabase (for multiple databases, use --ref-\\nfp db1.fa --ref-fp db2.fa ..) default for\\npositive filtering is:\\n/usr/local/lib/python3.7/site-\\npackages/deblur/support_files/88_otus.fasta\\ndefault for negative filtering is:\\n/usr/local/lib/python3.7/site-\\npackages/deblur/support_files/artifacts.fa"
    ref_db_fp: "Keep all sequences aligning to this indexed\\ndatabase. For multiple databases, the order\\nmust follow that of --ref-fp, for example,\\n--ref-db-fp db1.idx --ref-db-fp db2.idx .."
    negate: "/ --only-pos       Use --negate (i.e. True) to discard all\\nsequences aligning to the database passed\\nvia --neg-ref-fp option. Alternatively, use\\n--only-pos (i.e. False) to filter by only\\nkeeping sequences similar to ones in --pos-\\nref-fp.  [default: True]"
    threads_per_sample: "Number of threads to use per sample (0 to\\nuse all)  [default: 1]"
    log_level: "RANGE       Level of messages for log file(range 1-debug\\nto 5-critical  [default: 2]"
    log_file: "log file name  [default: deblur.log]"
    seqs_fp: ""
    output_dir: ""
  }
  output {
    File out_stdout = stdout()
  }
}