version 1.0

task Probabilistic2020 {
  input {
    String? log_level
    String? log
    Boolean? verbose
  }
  command <<<
    probabilistic2020 \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    log_level: "Write a log file (--log-level=DEBUG for debug mode, --log-level=INFO for info mode)"
    log: "Path to log file. (accepts \"stdout\")"
    verbose: "Flag for more verbose log output"
  }
}