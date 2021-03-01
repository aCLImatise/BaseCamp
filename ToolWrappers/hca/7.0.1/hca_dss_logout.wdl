version 1.0

task HcaDssLogout {
  input {
    String? log_level
    String hca
  }
  command <<<
    hca dss logout \
      ~{hca} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    log_level: ""
    hca: ""
  }
  output {
    File out_stdout = stdout()
  }
}