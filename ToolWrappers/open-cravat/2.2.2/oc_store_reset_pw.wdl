version 1.0

task OcStoreResetpw {
  input {
    String username
  }
  command <<<
    oc store reset_pw \
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