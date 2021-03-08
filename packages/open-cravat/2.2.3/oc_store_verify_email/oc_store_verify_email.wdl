version 1.0

task OcStoreVerifyemail {
  input {
    String username
  }
  command <<<
    oc store verify_email \
      ~{username}
  >>>
  runtime {
    docker: "quay.io/biocontainers/open-cravat:2.2.3--pyh3252c3a_0"
  }
  parameter_meta {
    username: "username"
  }
  output {
    File out_stdout = stdout()
  }
}