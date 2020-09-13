version 1.0

task Myriad {
  input {
    String? host
    String? port
    String? key
    Int? max_items
    Boolean? client
    Boolean? server_client
  }
  command <<<
    myriad \
      ~{if defined(host) then ("--host " +  '"' + host + '"') else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{if defined(key) then ("--key " +  '"' + key + '"') else ""} \
      ~{if defined(max_items) then ("--max_items " +  '"' + max_items + '"') else ""} \
      ~{if (client) then "--client" else ""} \
      ~{if (server_client) then "--serverclient" else ""}
  >>>
  parameter_meta {
    host: ""
    port: ""
    key: ""
    max_items: ""
    client: "Run client"
    server_client: "Run server-client demo"
  }
  output {
    File out_stdout = stdout()
  }
}