version 1.0

task SingularityRemoteLogin {
  input {
    File? token_file
    String? login
    String? options_dot_dot_dot
  }
  command <<<
    singularity remote login \
      ~{login} \
      ~{options_dot_dot_dot} \
      ~{if defined(token_file) then ("--tokenfile " +  '"' + token_file + '"') else ""}
  >>>
  parameter_meta {
    token_file: "path to the file holding token"
    login: ""
    options_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}