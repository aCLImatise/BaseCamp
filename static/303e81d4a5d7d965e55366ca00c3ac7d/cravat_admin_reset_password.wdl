version 1.0

task CravatadminResetpassword {
  input {
    String username
  }
  command <<<
    cravat_admin reset_password \
      ~{username}
  >>>
  runtime {
    docker: "quay.io/biocontainers/open-cravat:2.2.2--pyh3252c3a_0"
  }
  parameter_meta {
    username: "username"
  }
  output {
    File out_stdout = stdout()
  }
}