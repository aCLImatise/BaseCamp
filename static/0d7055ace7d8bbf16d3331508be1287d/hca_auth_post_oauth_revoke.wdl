version 1.0

task HcaAuthPostOauthRevoke {
  input {
    String? token
    String? client_id
  }
  command <<<
    hca auth post-oauth-revoke \
      ~{if defined(token) then ("--token " +  '"' + token + '"') else ""} \
      ~{if defined(client_id) then ("--client-id " +  '"' + client_id + '"') else ""}
  >>>
  parameter_meta {
    token: "The refresh token to revoke."
    client_id: ""
  }
}