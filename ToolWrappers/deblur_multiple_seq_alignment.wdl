version 1.0

task DeblurMultipleseqalignment {
  input {
    Int? threads_per_sample
    Int? log_level
    File? log_file
    String seqs_fp
    String output_fp
  }
  command <<<
    deblur multiple_seq_alignment \
      ~{seqs_fp} \
      ~{output_fp} \
      ~{if defined(threads_per_sample) then ("--threads-per-sample " +  '"' + threads_per_sample + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  parameter_meta {
    threads_per_sample: "Number of threads to use per sample (0 to\\nuse all)  [default: 1]"
    log_level: "RANGE       Level of messages for log file(range 1-debug\\nto 5-critical  [default: 2]"
    log_file: "log file name  [default: deblur.log]"
    seqs_fp: ""
    output_fp: ""
  }
  output {
    File out_stdout = stdout()
  }
}