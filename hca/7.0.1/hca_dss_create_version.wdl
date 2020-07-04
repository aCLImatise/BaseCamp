version 1.0

task HcaDssCreateVersion {
  input {
    String? log_level
    String hca
  }
  command <<<
    hca dss create-version \
      ~{hca} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""}
  >>>
  parameter_meta {
    log_level: ""
    hca: ""
  }
}