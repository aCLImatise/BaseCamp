version 1.0

task Pyega3 {
  input {
    Boolean? debug
    String? config_file
    String? server_file
    String? connections
    Boolean? test
  }
  command <<<
    pyega3 \
      ~{true="--debug" false="" debug} \
      ~{if defined(config_file) then ("--config-file " +  '"' + config_file + '"') else ""} \
      ~{if defined(server_file) then ("--server-file " +  '"' + server_file + '"') else ""} \
      ~{if defined(connections) then ("--connections " +  '"' + connections + '"') else ""} \
      ~{true="--test" false="" test}
  >>>
  parameter_meta {
    debug: "Extra debugging messages"
    config_file: "JSON file containing credentials/config e.g.{'username':'user1','password':'toor'}"
    server_file: "JSON file containing server config e.g.{'url_auth':'aai url','url_api':'api url', 'url_api_ticket':'htsget url', 'client_secret':'client secret'}"
    connections: "Download using specified number of connections"
    test: "Test user activated"
  }
}