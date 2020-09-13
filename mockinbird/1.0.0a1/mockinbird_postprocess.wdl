version 1.0

task MockinbirdPostprocess {
  input {
    File? prefix
    String? log_level
  }
  command <<<
    mockinbird postprocess \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(log_level) then ("--log_level " +  '"' + log_level + '"') else ""}
  >>>
  parameter_meta {
    prefix: "preprocessing filename prefix - only required if there\\nare multiple table files in the specified preprocess\\ndirectory (default: None)"
    log_level: "verbosity level of the logger (default: info)"
  }
  output {
    File out_stdout = stdout()
  }
}