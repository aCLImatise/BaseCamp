version 1.0

task MbPreprocess {
  input {
    String? log_level
  }
  command <<<
    mb-preprocess \
      ~{if defined(log_level) then ("--log_level " +  '"' + log_level + '"') else ""}
  >>>
  parameter_meta {
    log_level: "verbosity level of the logger"
  }
}