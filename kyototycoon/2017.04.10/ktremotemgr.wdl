version 1.0

task Ktremotemgr {
  input {
    String? host
    String? port
    String? tout
    String report
  }
  command <<<
    ktremotemgr \
      ~{report} \
      ~{if defined(host) then ("-host " +  '"' + host + '"') else ""} \
      ~{if defined(port) then ("-port " +  '"' + port + '"') else ""} \
      ~{if defined(tout) then ("-tout " +  '"' + tout + '"') else ""}
  >>>
  parameter_meta {
    host: ""
    port: ""
    tout: ""
    report: ""
  }
}