version 1.0

task HcaDssCreateversion {
  input {
    String? log_level
    String hca
  }
  command <<<
    hca dss create_version \
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