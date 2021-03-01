version 1.0

task Ktserver {
  input {
    File? log
    Int? th
    Int? tout
    Int? port
    String? host
  }
  command <<<
    ktserver \
      ~{if defined(log) then ("-log " +  '"' + log + '"') else ""} \
      ~{if defined(th) then ("-th " +  '"' + th + '"') else ""} \
      ~{if defined(tout) then ("-tout " +  '"' + tout + '"') else ""} \
      ~{if defined(port) then ("-port " +  '"' + port + '"') else ""} \
      ~{if defined(host) then ("-host " +  '"' + host + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    log: ""
    th: ""
    tout: ""
    port: ""
    host: ""
  }
  output {
    File out_stdout = stdout()
  }
}