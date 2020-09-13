version 1.0

task Ktutiltest {
  input {
    Int? u_lim
    Int? th
    Int? tout
    Int? port
    String? host
    String http
    String rpc
    String ulog
    File path
    String proc
    String rnum
  }
  command <<<
    ktutiltest \
      ~{http} \
      ~{rpc} \
      ~{ulog} \
      ~{path} \
      ~{proc} \
      ~{rnum} \
      ~{if defined(u_lim) then ("-ulim " +  '"' + u_lim + '"') else ""} \
      ~{if defined(th) then ("-th " +  '"' + th + '"') else ""} \
      ~{if defined(tout) then ("-tout " +  '"' + tout + '"') else ""} \
      ~{if defined(port) then ("-port " +  '"' + port + '"') else ""} \
      ~{if defined(host) then ("-host " +  '"' + host + '"') else ""}
  >>>
  parameter_meta {
    u_lim: ""
    th: ""
    tout: ""
    port: ""
    host: ""
    http: ""
    rpc: ""
    ulog: ""
    path: ""
    proc: ""
    rnum: ""
  }
  output {
    File out_stdout = stdout()
  }
}