version 1.0

task HcaAuthPostoauthrevoke {
  input {
    String? client_id
    String? token
  }
  command <<<
    hca auth post_oauth_revoke \
      ~{if defined(client_id) then ("--client-id " +  '"' + client_id + '"') else ""} \
      ~{if defined(token) then ("--token " +  '"' + token + '"') else ""}
  >>>
  parameter_meta {
    client_id: "--token TOKEN         The refresh token to revoke.\\n"
    token: ""
  }
  output {
    File out_stdout = stdout()
  }
}