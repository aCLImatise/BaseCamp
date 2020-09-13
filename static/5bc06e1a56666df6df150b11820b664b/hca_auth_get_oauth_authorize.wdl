version 1.0

task HcaAuthGetoauthauthorize {
  input {
    String? redirect_uri
    String? state
    String? client_id
    String? scope
    String? resp_one_type
    String? nonce
    String? prompt
  }
  command <<<
    hca auth get_oauth_authorize \
      ~{if defined(redirect_uri) then ("--redirect-uri " +  '"' + redirect_uri + '"') else ""} \
      ~{if defined(state) then ("--state " +  '"' + state + '"') else ""} \
      ~{if defined(client_id) then ("--client-id " +  '"' + client_id + '"') else ""} \
      ~{if defined(scope) then ("--scope " +  '"' + scope + '"') else ""} \
      ~{if defined(resp_one_type) then ("--respone-type " +  '"' + resp_one_type + '"') else ""} \
      ~{if defined(nonce) then ("--nonce " +  '"' + nonce + '"') else ""} \
      ~{if defined(prompt) then ("--prompt " +  '"' + prompt + '"') else ""}
  >>>
  parameter_meta {
    redirect_uri: ""
    state: ""
    client_id: ""
    scope: ""
    resp_one_type: ""
    nonce: ""
    prompt: ""
  }
  output {
    File out_stdout = stdout()
  }
}