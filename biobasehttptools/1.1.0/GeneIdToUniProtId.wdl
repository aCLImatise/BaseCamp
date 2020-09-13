version 1.0

task GeneIdToUniProtId {
  input {
    String host
    String port
    String secure
    String request_headers
    File path
    String query_string
    String method
    String proxy
    String raw_body
    String redirect_count
    String response_time_out
    String request_version
  }
  command <<<
    GeneIdToUniProtId \
      ~{host} \
      ~{port} \
      ~{secure} \
      ~{request_headers} \
      ~{path} \
      ~{query_string} \
      ~{method} \
      ~{proxy} \
      ~{raw_body} \
      ~{redirect_count} \
      ~{response_time_out} \
      ~{request_version}
  >>>
  parameter_meta {
    host: "= \\\"rest.ensemblgenomes.org\\\""
    port: "= 80"
    secure: "= False"
    request_headers: "= [(\\\"Connection\\\",\\\"close\\\")]"
    path: "= \\\"/xrefs/id/\\\""
    query_string: "= \\\"?external_db=Uniprot/SWISSPROT;all_levels=1;content-type=application/json\\\""
    method: "= \\\"GET\\\""
    proxy: "= Nothing"
    raw_body: "= False"
    redirect_count: "= 10"
    response_time_out: "= ResponseTimeoutDefault"
    request_version: "= HTTP/1.1"
  }
  output {
    File out_stdout = stdout()
  }
}