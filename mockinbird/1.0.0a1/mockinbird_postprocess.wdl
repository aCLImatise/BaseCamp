version 1.0

task MockinbirdPostprocess {
  input {
    String? prefix
    String? log_level
  }
  command <<<
    mockinbird postprocess \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(log_level) then ("--log_level " +  '"' + log_level + '"') else ""}
  >>>
  parameter_meta {
    prefix: "preprocessing filename prefix - only required if there are multiple table files in the specified preprocess directory (default: None)"
    log_level: "verbosity level of the logger (default: info)"
  }
}