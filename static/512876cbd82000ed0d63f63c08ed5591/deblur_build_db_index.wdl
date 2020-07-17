version 1.0

task DeblurBuildDbIndex {
  input {
    Int? log_level
    File? log_file
    String ref_fp
    String output_dir
  }
  command <<<
    deblur build-db-index \
      ~{ref_fp} \
      ~{output_dir} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  parameter_meta {
    log_level: "RANGE  Level of messages for log file(range 1-debug to 5-critical  [default: 2]"
    log_file: "log file name  [default: deblur.log]"
    ref_fp: ""
    output_dir: ""
  }
}