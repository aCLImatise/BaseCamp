version 1.0

task CvaChangepasswordNewPw {
  input {
    String cva
    String change_password
    String username
    String cur_pw
    String new_pw
  }
  command <<<
    cva change_password new_pw \
      ~{cva} \
      ~{change_password} \
      ~{username} \
      ~{cur_pw} \
      ~{new_pw}
  >>>
  runtime {
    docker: "quay.io/biocontainers/open-cravat:2.2.2--pyh3252c3a_0"
  }
  parameter_meta {
    cva: ""
    change_password: ""
    username: ""
    cur_pw: ""
    new_pw: ""
  }
  output {
    File out_stdout = stdout()
  }
}