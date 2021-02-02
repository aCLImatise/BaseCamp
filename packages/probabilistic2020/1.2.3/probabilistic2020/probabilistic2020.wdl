version 1.0

task Probabilistic2020 {
  input {
    File? log_level
    File? log
    Boolean? verbose
  }
  command <<<
    probabilistic2020 \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    log_level: "Write a log file (--log-level=DEBUG for debug mode,\\n--log-level=INFO for info mode)"
    log: "Path to log file. (accepts \\\"stdout\\\")"
    verbose: "Flag for more verbose log output"
  }
  output {
    File out_stdout = stdout()
  }
}