version 1.0

task Myriad {
  input {
    String? max_items
    Boolean? server_client
  }
  command <<<
    myriad \
      ~{if defined(max_items) then ("--max_items " +  '"' + max_items + '"') else ""} \
      ~{if (server_client) then "--serverclient" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    max_items: "Run client"
    server_client: "Run server-client demo"
  }
  output {
    File out_stdout = stdout()
  }
}