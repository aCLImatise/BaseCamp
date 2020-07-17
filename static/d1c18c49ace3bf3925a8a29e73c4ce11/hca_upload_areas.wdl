version 1.0

task HcaUploadAreas {
  input {
    String? log_level
    String hca
  }
  command <<<
    hca upload areas \
      ~{hca} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""}
  >>>
  parameter_meta {
    log_level: ""
    hca: ""
  }
}