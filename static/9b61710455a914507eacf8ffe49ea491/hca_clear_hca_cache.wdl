version 1.0

task HcaClearHcaCache {
  input {
    String? log_level
    String hca
  }
  command <<<
    hca clear-hca-cache \
      ~{hca} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""}
  >>>
  parameter_meta {
    log_level: ""
    hca: ""
  }
}