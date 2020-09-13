version 1.0

task Googleapi {
  input {
    String? scope
    String? client_id
    String? client_secret
    String? api
    String? api_version
    String? content_type
    String? uri
    String? discovery_uri
    String? method
    String? request_or_id
    Boolean? verbose
    Int o_auth_two_login
    String list
    String execute
    String irb
  }
  command <<<
    google_api \
      ~{o_auth_two_login} \
      ~{list} \
      ~{execute} \
      ~{irb} \
      ~{if defined(scope) then ("--scope " +  '"' + scope + '"') else ""} \
      ~{if defined(client_id) then ("--client-id " +  '"' + client_id + '"') else ""} \
      ~{if defined(client_secret) then ("--client-secret " +  '"' + client_secret + '"') else ""} \
      ~{if defined(api) then ("--api " +  '"' + api + '"') else ""} \
      ~{if defined(api_version) then ("--api-version " +  '"' + api_version + '"') else ""} \
      ~{if defined(content_type) then ("--content-type " +  '"' + content_type + '"') else ""} \
      ~{if defined(uri) then ("--uri " +  '"' + uri + '"') else ""} \
      ~{if defined(discovery_uri) then ("--discovery-uri " +  '"' + discovery_uri + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(request_or_id) then ("--requestor-id " +  '"' + request_or_id + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    scope: "Set the OAuth scope"
    client_id: "Set the OAuth client id or key"
    client_secret: "Set the OAuth client secret"
    api: "Perform discovery on API"
    api_version: "Select api version"
    content_type: "Content-Type for request"
    uri: "Sets the URI to perform a request against"
    discovery_uri: "Sets the URI to perform discovery"
    method: "Sets the HTTP method to use for the request"
    request_or_id: "Sets the email address of the requestor"
    verbose: "Run verbosely"
    o_auth_two_login: "Log a user into an API with OAuth 2.0"
    list: "List the methods available for an API"
    execute: "Execute a method on the API"
    irb: "Start an interactive client session"
  }
  output {
    File out_stdout = stdout()
  }
}