version 1.0

task ReadFilterRedact.2 {
  input {
    File? file
    String? log_level
    Boolean? verbose
    Boolean? quiet
    File? option_file
    String table
  }
  command <<<
    read-filter-redact.2 \
      ~{table} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  parameter_meta {
    file: "File containing SpotId-s to redact "
    log_level: "Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug) or  (0-6) Current/default is warn "
    verbose: "Increase the verbosity of the program  status messages. Use multiple times for more  verbosity. Negates quiet. "
    quiet: "Turn off all status messages for the  program. Negated by verbose. "
    option_file: "Read more options and parameters from the  file. "
    table: ""
  }
}