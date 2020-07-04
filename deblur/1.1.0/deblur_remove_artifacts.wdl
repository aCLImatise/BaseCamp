version 1.0

task DeblurRemoveArtifacts {
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
    deblur remove-artifacts \
      ~{seqs_fp} \
      ~{output_dir} \
      ~{if defined(ref_fp) then ("--ref-fp " +  '"' + ref_fp + '"') else ""} \
      ~{if defined(ref_db_fp) then ("--ref-db-fp " +  '"' + ref_db_fp + '"') else ""} \
      ~{true="--negate" false="" negate} \
      ~{if defined(threads_per_sample) then ("--threads-per-sample " +  '"' + threads_per_sample + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  parameter_meta {
    ref_fp: "Keep all sequences aligning to this FASTA database (for multiple databases, use --ref- fp db1.fa --ref-fp db2.fa ..) default for positive filtering is: /tmp/tmpciswt9a4/lib/python3.6/site- packages/deblur/support_files/88_otus.fasta default for negative filtering is: /tmp/tmpciswt9a4/lib/python3.6/site- packages/deblur/support_files/artifacts.fa"
    ref_db_fp: "Keep all sequences aligning to this indexed database. For multiple databases, the order must follow that of --ref-fp, for example, --ref-db-fp db1.idx --ref-db-fp db2.idx .."
    negate: "/ --only-pos       Use --negate (i.e. True) to discard all sequences aligning to the database passed via --neg-ref-fp option. Alternatively, use --only-pos (i.e. False) to filter by only keeping sequences similar to ones in --pos- ref-fp.  [default: True]"
    threads_per_sample: "Number of threads to use per sample (0 to use all)  [default: 1]"
    log_level: "RANGE       Level of messages for log file(range 1-debug to 5-critical  [default: 2]"
    log_file: "log file name  [default: deblur.log]"
    seqs_fp: ""
    output_dir: ""
  }
}