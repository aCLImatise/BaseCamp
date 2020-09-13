version 1.0

task AccessionToTaxIdbin {
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
    AccessionToTaxId_bin \
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
    host: "= \\\"eutils.ncbi.nlm.nih.gov\\\""
    port: "= 443"
    secure: "= True"
    request_headers: "= [(\\\"Connection\\\",\\\"close\\\")]"
    path: "= \\\"/entrez/eutils/esummary.fcgi\\\""
    query_string: "= \\\"?db=nucleotide&id=\\\""
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