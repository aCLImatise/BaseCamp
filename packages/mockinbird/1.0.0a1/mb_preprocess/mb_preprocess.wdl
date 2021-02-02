version 1.0

task Mbpreprocess {
  input {
    String? log_level
  }
  command <<<
    mb_preprocess \
      ~{if defined(log_level) then ("--log_level " +  '"' + log_level + '"') else ""}
  >>>
  parameter_meta {
    log_level: "verbosity level of the logger"
  }
  output {
    File out_stdout = stdout()
  }
}