version 1.0

task DeblurDereplicate {
  input {
    Int? min_size
    Int? log_level
    File? log_file
    String seqs_fp
    String output_fp
  }
  command <<<
    deblur dereplicate \
      ~{seqs_fp} \
      ~{output_fp} \
      ~{if defined(min_size) then ("--min-size " +  '"' + min_size + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    min_size: "Discard sequences with an abundance value smaller\\nthan min-size  [default: 2]"
    log_level: "RANGE  Level of messages for log file(range 1-debug to"
    log_file: "log file name  [default: deblur.log]"
    seqs_fp: ""
    output_fp: ""
  }
  output {
    File out_stdout = stdout()
  }
}