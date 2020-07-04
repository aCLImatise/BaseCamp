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
      ~{true="--info" false="" info} \
      ~{true="--silent" false="" silent} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    info: "Synonym for --help."
    silent: "Only print the error message."
    verbose: "Print error code and message (default). (Defaults to on; use --skip-verbose to disable.)"
    error_code: ""
    error_code_dot_dot_dot: ""
  }
}