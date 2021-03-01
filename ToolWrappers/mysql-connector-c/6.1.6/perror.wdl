version 1.0

task Perror {
  input {
    Boolean? info
    Boolean? silent
    Boolean? verbose
    String? error_code
    String? error_code_dot_dot_dot
  }
  command <<<
    perror \
      ~{error_code} \
      ~{error_code_dot_dot_dot} \
      ~{if (info) then "--info" else ""} \
      ~{if (silent) then "--silent" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    info: "Synonym for --help."
    silent: "Only print the error message."
    verbose: "Print error code and message (default).\\n(Defaults to on; use --skip-verbose to disable.)"
    error_code: ""
    error_code_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}