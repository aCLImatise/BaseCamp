version 1.0

task HcaAuthLogout {
  input {
    String? log_level
    String hca
  }
  command <<<
    hca auth logout \
      ~{hca} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""}
  >>>
  parameter_meta {
    log_level: ""
    hca: ""
  }
}