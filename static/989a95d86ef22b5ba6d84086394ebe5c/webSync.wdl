version 1.0

task WebSync {
  input {
    Boolean? debug
    String? connections
    Boolean? skip_scan
    String url
  }
  command <<<
    webSync \
      ~{url} \
      ~{true="--debug" false="" debug} \
      ~{if defined(connections) then ("--connections " +  '"' + connections + '"') else ""} \
      ~{true="--skipScan" false="" skip_scan}
  >>>
  parameter_meta {
    debug: "show debug messages"
    connections: "Maximum number of parallel connections to the server, default 10"
    skip_scan: "Do not scan local file sizes again, in case you know it is up to date"
    url: ""
  }
}