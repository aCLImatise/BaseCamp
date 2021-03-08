version 1.0

task CvaCreateaccountPassword {
  input {
    String cva
    String create_account
    String username
    String password
  }
  command <<<
    cva create_account password \
      ~{cva} \
      ~{create_account} \
      ~{username} \
      ~{password}
  >>>
  runtime {
    docker: "quay.io/biocontainers/open-cravat:2.2.3--pyh3252c3a_0"
  }
  parameter_meta {
    cva: ""
    create_account: ""
    username: ""
    password: ""
  }
  output {
    File out_stdout = stdout()
  }
}