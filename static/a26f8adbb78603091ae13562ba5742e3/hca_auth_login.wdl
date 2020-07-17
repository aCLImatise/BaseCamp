version 1.0

task HcaAuthLogin {
  input {
    String? access_token
    Boolean? remote
  }
  command <<<
    hca auth login \
      ~{if defined(access_token) then ("--access-token " +  '"' + access_token + '"') else ""} \
      ~{true="--remote" false="" remote}
  >>>
  parameter_meta {
    access_token: ""
    remote: ""
  }
}