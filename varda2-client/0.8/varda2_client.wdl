version 1.0

task Varda2client {
  input {
    String? protocol
    String? server
    String? certificate
    Boolean? v
  }
  command <<<
    varda2_client \
      ~{if defined(protocol) then ("--protocol " +  '"' + protocol + '"') else ""} \
      ~{if defined(server) then ("--server " +  '"' + server + '"') else ""} \
      ~{if defined(certificate) then ("--certificate " +  '"' + certificate + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    protocol: "Server protocol"
    server: "Server hostname"
    certificate: ""
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}