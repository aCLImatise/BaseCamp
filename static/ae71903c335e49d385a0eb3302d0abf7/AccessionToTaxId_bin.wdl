version 1.0

task AccessionToTaxIdbin {
  input {
    String host
    String secure
    File path
    String method
    String proxy
    String raw_body
    String request_version
  }
  command <<<
    AccessionToTaxId_bin \
      ~{host} \
      ~{secure} \
      ~{path} \
      ~{method} \
      ~{proxy} \
      ~{raw_body} \
      ~{request_version}
  >>>
  parameter_meta {
    host: "= \\\"eutils.ncbi.nlm.nih.gov\\\""
    secure: "= True"
    path: "= \\\"/entrez/eutils/esummary.fcgi\\\""
    method: "= \\\"GET\\\""
    proxy: "= Nothing"
    raw_body: "= False"
    request_version: "= HTTP/1.1"
  }
  output {
    File out_stdout = stdout()
  }
}