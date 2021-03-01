version 1.0

task OcStoreNewaccount {
  input {
    String username
    String password
  }
  command <<<
    oc store new_account \
      ~{username} \
      ~{password}
  >>>
  runtime {
    docker: "quay.io/biocontainers/open-cravat:2.2.2--pyh3252c3a_0"
  }
  parameter_meta {
    username: "use your email as your username."
    password: "this is your password."
  }
  output {
    File out_stdout = stdout()
  }
}