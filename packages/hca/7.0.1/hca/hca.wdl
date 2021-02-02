version 1.0

task Hca {
  input {
    String? log_level
  }
  command <<<
    hca \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""}
  >>>
  parameter_meta {
    log_level: "['DEBUG', 'INFO', 'WARNING', 'ERROR', 'CRITICAL']\\n"
  }
  output {
    File out_stdout = stdout()
  }
}