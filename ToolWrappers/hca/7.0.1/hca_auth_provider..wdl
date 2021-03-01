version 1.0

task HcaAuthProvider {
  input {
    String hca
    String auth
  }
  command <<<
    hca auth provider_ \
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