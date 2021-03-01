version 1.0

task RNAcentralHTTPRequestbin {
  input {
    String secure
    File path
    String query_string
    String method
    String proxy
    String raw_body
    String response_time_out
    String request_version
  }
  command <<<
    RNAcentralHTTPRequest_bin \
      ~{secure} \
      ~{path} \
      ~{query_string} \
      ~{method} \
      ~{proxy} \
      ~{raw_body} \
      ~{response_time_out} \
      ~{request_version}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    secure: "= False"
    path: "= \\\"/api/v1/rna/\\\""
    query_string: "= \\\"?md5=d41d8cd98f00b204e9800998ecf8427e\\\""
    method: "= \\\"GET\\\""
    proxy: "= Nothing"
    raw_body: "= False"
    response_time_out: "= ResponseTimeoutDefault"
    request_version: "= HTTP/1.1"
  }
  output {
    File out_stdout = stdout()
  }
}