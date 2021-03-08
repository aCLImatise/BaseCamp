version 1.0

task CravatadminCreateaccountPassword {
  input {
    String cravat_admin
    String create_account
    String username
    String password
  }
  command <<<
    cravat_admin create_account password \
      ~{cravat_admin} \
      ~{create_account} \
      ~{username} \
      ~{password}
  >>>
  runtime {
    docker: "quay.io/biocontainers/open-cravat:2.2.3--pyh3252c3a_0"
  }
  parameter_meta {
    cravat_admin: ""
    create_account: ""
    username: ""
    password: ""
  }
  output {
    File out_stdout = stdout()
  }
}