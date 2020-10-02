version 1.0

task HcaAuthGetoauthauthorize {
  input {
    String? redirect_uri
  }
  command <<<
    hca auth get_oauth_authorize \
      ~{if defined(redirect_uri) then ("--redirect-uri " +  '"' + redirect_uri + '"') else ""}
  >>>
  parameter_meta {
    redirect_uri: ""
  }
  output {
    File out_stdout = stdout()
  }
}