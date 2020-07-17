version 1.0

task HcaAuthGetJwks.json {
  input {
    String? log_level
    String hca
  }
  command <<<
    hca auth get-jwks.json \
      ~{hca} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""}
  >>>
  parameter_meta {
    log_level: ""
    hca: ""
  }
}