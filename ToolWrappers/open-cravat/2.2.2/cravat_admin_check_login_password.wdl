version 1.0

task CravatadminCheckloginPassword {
  input {
    String cravat_admin
    String check_login
    String username
    String password
  }
  command <<<
    cravat_admin check_login password \
      ~{cravat_admin} \
      ~{check_login} \
      ~{username} \
      ~{password}
  >>>
  runtime {
    docker: "quay.io/biocontainers/open-cravat:2.2.2--pyh3252c3a_0"
  }
  parameter_meta {
    cravat_admin: ""
    check_login: ""
    username: ""
    password: ""
  }
  output {
    File out_stdout = stdout()
  }
}