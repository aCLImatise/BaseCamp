version 1.0

task Myriad {
  input {
    String? key
    String? port
    String? host
  }
  command <<<
    myriad \
      ~{if defined(key) then ("--key " +  '"' + key + '"') else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{if defined(host) then ("--host " +  '"' + host + '"') else ""}
  >>>
  parameter_meta {
    key: ""
    port: ""
    host: ""
  }
  output {
    File out_stdout = stdout()
  }
}