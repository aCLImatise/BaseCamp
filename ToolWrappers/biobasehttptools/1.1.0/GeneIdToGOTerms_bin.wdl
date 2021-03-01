version 1.0

task GeneIdToGOTermsbin {
  input {
    String host
    String secure
    String query_string
    String method
    String proxy
    String raw_body
    String response_time_out
    String request_version
  }
  command <<<
    GeneIdToGOTerms_bin \
      ~{host} \
      ~{secure} \
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
    host: "= \\\"rest.ensemblgenomes.org\\\""
    secure: "= False"
    query_string: "= \\\"?external_db=GO;all_levels=1;content-type=application/json\\\""
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