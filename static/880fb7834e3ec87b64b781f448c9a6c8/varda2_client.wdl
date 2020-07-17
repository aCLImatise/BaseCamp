version 1.0

task Varda2Client {
  input {
    String? protocol
    String? server
    String? certificate
    Boolean? verbose
  }
  command <<<
    varda2-client \
      ~{if defined(protocol) then ("--protocol " +  '"' + protocol + '"') else ""} \
      ~{if defined(server) then ("--server " +  '"' + server + '"') else ""} \
      ~{if defined(certificate) then ("--certificate " +  '"' + certificate + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    protocol: "Server protocol"
    server: "Server hostname"
    certificate: "Certificate"
    verbose: "Verbose output"
  }
}