version 1.0

task WebSync {
  input {
    Boolean? debug
    Int? connections
    Boolean? skip_scan
    String url
  }
  command <<<
    webSync \
      ~{url} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(connections) then ("--connections " +  '"' + connections + '"') else ""} \
      ~{if (skip_scan) then "--skipScan" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    debug: "show debug messages"
    connections: "Maximum number of parallel connections to the server,\\ndefault 10"
    skip_scan: "Do not scan local file sizes again, in case you know\\nit is up to date\\n"
    url: ""
  }
  output {
    File out_stdout = stdout()
  }
}