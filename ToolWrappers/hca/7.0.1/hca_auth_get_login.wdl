version 1.0

task HcaAuthGetlogin {
  input {
    String? redirect_uri
    String? state
  }
  command <<<
    hca auth get_login \
      ~{if defined(redirect_uri) then ("--redirect-uri " +  '"' + redirect_uri + '"') else ""} \
      ~{if defined(state) then ("--state " +  '"' + state + '"') else ""}
  >>>
  parameter_meta {
    redirect_uri: "Where to redirect to once login is complete."
    state: "An opaque parameter that is returned back to the `redirect_uri`."
  }
  output {
    File out_stdout = stdout()
  }
}