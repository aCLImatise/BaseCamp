version 1.0

task HcaAuthLogin {
  input {
    Boolean? remote
    String? access_token
  }
  command <<<
    hca auth login \
      ~{if (remote) then "--remote" else ""} \
      ~{if defined(access_token) then ("--access-token " +  '"' + access_token + '"') else ""}
  >>>
  parameter_meta {
    remote: ""
    access_token: ""
  }
  output {
    File out_stdout = stdout()
  }
}