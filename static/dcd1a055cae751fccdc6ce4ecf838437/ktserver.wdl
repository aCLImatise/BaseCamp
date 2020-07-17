version 1.0

task Ktserver {
  input {
    String? host
    String? port
    String? tout
    String? th
    File? log
  }
  command <<<
    ktserver \
      ~{if defined(host) then ("-host " +  '"' + host + '"') else ""} \
      ~{if defined(port) then ("-port " +  '"' + port + '"') else ""} \
      ~{if defined(tout) then ("-tout " +  '"' + tout + '"') else ""} \
      ~{if defined(th) then ("-th " +  '"' + th + '"') else ""} \
      ~{if defined(log) then ("-log " +  '"' + log + '"') else ""}
  >>>
  parameter_meta {
    host: ""
    port: ""
    tout: ""
    th: ""
    log: ""
  }
}