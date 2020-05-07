version 1.0

task Srvarv {
  input {
    String portPort
    String? instanceInstance
  }
  command <<<
    srvarv \
      ~{instanceInstance} \
      ~{if defined(portPort) then ("--port " +  '"' + portPort + '"') else ""}
  >>>
}