version 1.0

task Isoseq3Summarize {
  input {
    Boolean? log_level
    Boolean? log_file
    String summary_dot_csv
  }
  command <<<
    isoseq3 summarize \
      ~{summary_dot_csv} \
      ~{true="--log-level" false="" log_level} \
      ~{true="--log-file" false="" log_file}
  >>>
  parameter_meta {
    log_level: "STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]"
    log_file: "FILE  Log to a file, instead of stderr."
    summary_dot_csv: "STR   Output summary CSV"
  }
}