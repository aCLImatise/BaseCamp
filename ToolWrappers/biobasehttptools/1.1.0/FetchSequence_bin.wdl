version 1.0

task FetchSequencebin {
  input {
    String host
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
    FetchSequence_bin \
      ~{host} \
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
    host: "= \\\"eutils.ncbi.nlm.nih.gov\\\""
    secure: "= True"
    path: "= \\\"/entrez/eutils/efetch.fcgi\\\""
    query_string: "= \\\"?db=nucleotide&id=0&seq_start=0&seq_stop=0&rettype=fasta\\\""
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