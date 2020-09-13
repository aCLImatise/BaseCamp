version 1.0

task Refgenie {
  input {
    Boolean? silent
    Int? verbosity
    Boolean? log_dev
  }
  command <<<
    refgenie \
      ~{if (silent) then "--silent" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if (log_dev) then "--logdev" else ""}
  >>>
  parameter_meta {
    silent: "Silence logging. Overrides verbosity."
    verbosity: "Set logging level (1-5 or logging module level name)"
    log_dev: "Expand content of logging message format."
  }
  output {
    File out_stdout = stdout()
  }
}