version 1.0

task HcaAuthCredentials {
  input {
    String hca
    String auth
  }
  command <<<
    hca auth credentials_ \
      ~{hca} \
      ~{auth}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    hca: ""
    auth: ""
  }
  output {
    File out_stdout = stdout()
  }
}