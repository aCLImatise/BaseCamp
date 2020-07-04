version 1.0

task HcaAuthGetEcho {
  input {
    String? log_level
    String hca
  }
  command <<<
    hca auth get-echo \
      ~{hca} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""}
  >>>
  parameter_meta {
    log_level: ""
    hca: ""
  }
}