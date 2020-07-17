version 1.0

task MbPostprocess {
  input {
    String? prefix
    String? log_level
  }
  command <<<
    mb-postprocess \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(log_level) then ("--log_level " +  '"' + log_level + '"') else ""}
  >>>
  parameter_meta {
    prefix: "preprocessing filename prefix - only required if there are multiple table files in the specified preprocess directory"
    log_level: "verbosity level of the logger"
  }
}