version 1.0

task CvaCheckloginPassword {
  input {
    String cva
    String check_login
    String username
    String password
  }
  command <<<
    cva check_login password \
      ~{cva} \
      ~{check_login} \
      ~{username} \
      ~{password}
  >>>
  runtime {
    docker: "quay.io/biocontainers/open-cravat:2.2.2--pyh3252c3a_0"
  }
  parameter_meta {
    cva: ""
    check_login: ""
    username: ""
    password: ""
  }
  output {
    File out_stdout = stdout()
  }
}