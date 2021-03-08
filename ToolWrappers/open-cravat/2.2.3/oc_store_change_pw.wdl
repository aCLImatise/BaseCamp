version 1.0

task OcStoreChangepw {
  input {
    String username
    String cur_pw
    String new_pw
  }
  command <<<
    oc store change_pw \
      ~{username} \
      ~{cur_pw} \
      ~{new_pw}
  >>>
  runtime {
    docker: "quay.io/biocontainers/open-cravat:2.2.3--pyh3252c3a_0"
  }
  parameter_meta {
    username: "username"
    cur_pw: "current password"
    new_pw: "new password"
  }
  output {
    File out_stdout = stdout()
  }
}