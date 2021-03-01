version 1.0

task HcaAuthPostoauthrevoke {
  input {
    String? client_id
  }
  command <<<
    hca auth post_oauth_revoke \
      ~{if defined(client_id) then ("--client-id " +  '"' + client_id + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    client_id: "The refresh token to revoke."
  }
  output {
    File out_stdout = stdout()
  }
}