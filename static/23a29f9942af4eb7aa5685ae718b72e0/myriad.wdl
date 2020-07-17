version 1.0

task Myriad {
  input {
    Boolean? client
    Boolean? server_client
    String? host
    String? port
    String? key
  }
  command <<<
    myriad \
      ~{true="--client" false="" client} \
      ~{true="--serverclient" false="" server_client} \
      ~{if defined(host) then ("--host " +  '"' + host + '"') else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{if defined(key) then ("--key " +  '"' + key + '"') else ""}
  >>>
  parameter_meta {
    client: "Run client"
    server_client: "Run server-client demo"
    host: ""
    port: ""
    key: ""
  }
}