version 1.0

task Pyega3 {
  input {
    Boolean? debug
    File? config_file
    File? server_file
    Int? connections
    Boolean? test
  }
  command <<<
    pyega3 \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(config_file) then ("--config-file " +  '"' + config_file + '"') else ""} \
      ~{if defined(server_file) then ("--server-file " +  '"' + server_file + '"') else ""} \
      ~{if defined(connections) then ("--connections " +  '"' + connections + '"') else ""} \
      ~{if (test) then "--test" else ""}
  >>>
  parameter_meta {
    debug: "Extra debugging messages"
    config_file: "JSON file containing credentials/config\\ne.g.{\\\"username\\\":\\\"user1\\\",\\\"password\\\":\\\"toor\\\"}"
    server_file: "JSON file containing server config\\ne.g.{\\\"url_auth\\\":\\\"aai url\\\",\\\"url_api\\\":\\\"api url\\\",\\n\\\"url_api_ticket\\\":\\\"htsget url\\\", \\\"client_secret\\\":\\\"client\\nsecret\\\"}"
    connections: "Download using specified number of connections"
    test: "Test user activated"
  }
  output {
    File out_stdout = stdout()
  }
}