version 1.0

task GeneIdToGOTerms {
  input {
    String host
    String secure
    String query_string
    String method
    String proxy
    String raw_body
    String request_version
  }
  command <<<
    GeneIdToGOTerms \
      ~{host} \
      ~{secure} \
      ~{query_string} \
      ~{method} \
      ~{proxy} \
      ~{raw_body} \
      ~{request_version}
  >>>
  parameter_meta {
    host: "= \\\"rest.ensemblgenomes.org\\\""
    secure: "= False"
    query_string: "= \\\"?external_db=GO;all_levels=1;content-type=application/json\\\""
    method: "= \\\"GET\\\""
    proxy: "= Nothing"
    raw_body: "= False"
    request_version: "= HTTP/1.1"
  }
  output {
    File out_stdout = stdout()
  }
}