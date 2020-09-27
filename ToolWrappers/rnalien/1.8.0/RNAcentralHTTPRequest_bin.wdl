version 1.0

task RNAcentralHTTPRequestbin {
  input {
    String host
    String secure
    File path
    String query_string
    String method
    String proxy
    String raw_body
    String request_version
  }
  command <<<
    RNAcentralHTTPRequest_bin \
      ~{host} \
      ~{secure} \
      ~{path} \
      ~{query_string} \
      ~{method} \
      ~{proxy} \
      ~{raw_body} \
      ~{request_version}
  >>>
  parameter_meta {
    host: "= \\\"rnacentral.org\\\""
    secure: "= False"
    path: "= \\\"/api/v1/rna/\\\""
    query_string: "= \\\"?md5=d41d8cd98f00b204e9800998ecf8427e\\\""
    method: "= \\\"GET\\\""
    proxy: "= Nothing"
    raw_body: "= False"
    request_version: "= HTTP/1.1"
  }
  output {
    File out_stdout = stdout()
  }
}