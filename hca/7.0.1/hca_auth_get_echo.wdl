version 1.0

task HcaAuthGetecho {
  input {
    String? log_level
    String hca
  }
  command <<<
    hca auth get_echo \
      ~{hca} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""}
  >>>
  parameter_meta {
    log_level: ""
    hca: ""
  }
  output {
    File out_stdout = stdout()
  }
}