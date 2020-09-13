version 1.0

task Mbpostprocess {
  input {
    File? prefix
    String? log_level
  }
  command <<<
    mb_postprocess \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(log_level) then ("--log_level " +  '"' + log_level + '"') else ""}
  >>>
  parameter_meta {
    prefix: "preprocessing filename prefix - only required if there\\nare multiple table files in the specified preprocess\\ndirectory"
    log_level: "verbosity level of the logger"
  }
  output {
    File out_stdout = stdout()
  }
}