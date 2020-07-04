version 1.0

task HcaAuthGetLogout {
  input {
    String? log_level
    String hca
  }
  command <<<
    hca auth get-logout \
      ~{hca} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""}
  >>>
  parameter_meta {
    log_level: ""
    hca: ""
  }
}