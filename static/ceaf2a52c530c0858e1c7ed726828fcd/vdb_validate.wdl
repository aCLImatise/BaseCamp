version 1.0

task VdbValidate.2 {
  input {
    Boolean? exhaustive
    File? ngc
    String? log_level
    Boolean? verbose
    Boolean? quiet
    File? option_file
    File path
    File? path_dot_dot_dot
  }
  command <<<
    vdb-validate.2 \
      ~{path} \
      ~{path_dot_dot_dot} \
      ~{true="--exhaustive" false="" exhaustive} \
      ~{if defined(ngc) then ("--ngc " +  '"' + ngc + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  parameter_meta {
    exhaustive: "Continue checking object for all possible  errors (default: false) "
    ngc: "path to ngc file "
    log_level: "Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug) or  (0-6) Current/default is warn "
    verbose: "Increase the verbosity of the program  status messages. Use multiple times for more  verbosity. Negates quiet. "
    quiet: "Turn off all status messages for the  program. Negated by verbose. "
    option_file: "Read more options and parameters from the  file. "
    path: ""
    path_dot_dot_dot: ""
  }
}