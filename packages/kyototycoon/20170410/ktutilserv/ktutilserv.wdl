version 1.0

task Ktutilserv {
  input {
    Int? th
    Int? tout
    Int? port
    String? host
    String echo
    String http
    String mt_echo
    String rpc
  }
  command <<<
    ktutilserv \
      ~{echo} \
      ~{http} \
      ~{mt_echo} \
      ~{rpc} \
      ~{if defined(th) then ("-th " +  '"' + th + '"') else ""} \
      ~{if defined(tout) then ("-tout " +  '"' + tout + '"') else ""} \
      ~{if defined(port) then ("-port " +  '"' + port + '"') else ""} \
      ~{if defined(host) then ("-host " +  '"' + host + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/kyototycoon:20170410--h896b458_0"
  }
  parameter_meta {
    th: ""
    tout: ""
    port: ""
    host: ""
    echo: ""
    http: ""
    mt_echo: ""
    rpc: ""
  }
  output {
    File out_stdout = stdout()
  }
}