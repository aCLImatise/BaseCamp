version 1.0

task OcStoreChecklogin {
  input {
    String username
    String password
  }
  command <<<
    oc store check_login \
      ~{username} \
      ~{password}
  >>>
  runtime {
    docker: "quay.io/biocontainers/open-cravat:2.2.2--pyh3252c3a_0"
  }
  parameter_meta {
    username: "username"
    password: "password"
  }
  output {
    File out_stdout = stdout()
  }
}