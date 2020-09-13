version 1.0

task Lwpdump {
  input {
    String? agent
    Boolean? keep_client_headers
    Int? max_length
    String? method
    Boolean? parse_head
    Boolean? request
    String url
  }
  command <<<
    lwp_dump \
      ~{url} \
      ~{if defined(agent) then ("--agent " +  '"' + agent + '"') else ""} \
      ~{if (keep_client_headers) then "--keep-client-headers" else ""} \
      ~{if defined(max_length) then ("--max-length " +  '"' + max_length + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if (parse_head) then "--parse-head" else ""} \
      ~{if (request) then "--request" else ""}
  >>>
  parameter_meta {
    agent: ""
    keep_client_headers: ""
    max_length: ""
    method: ""
    parse_head: ""
    request: ""
    url: ""
  }
  output {
    File out_stdout = stdout()
  }
}