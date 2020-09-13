version 1.0

task DeblurBuilddbindex {
  input {
    Int? log_level
    File? log_file
  }
  command <<<
    deblur build_db_index \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  parameter_meta {
    log_level: "RANGE  Level of messages for log file(range 1-debug to"
    log_file: "log file name  [default: deblur.log]"
  }
  output {
    File out_stdout = stdout()
  }
}