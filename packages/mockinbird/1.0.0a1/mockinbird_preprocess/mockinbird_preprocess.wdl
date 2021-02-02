version 1.0

task MockinbirdPreprocess {
  input {
    String? log_level
  }
  command <<<
    mockinbird preprocess \
      ~{if defined(log_level) then ("--log_level " +  '"' + log_level + '"') else ""}
  >>>
  parameter_meta {
    log_level: "verbosity level of the logger (default: info)"
  }
  output {
    File out_stdout = stdout()
  }
}