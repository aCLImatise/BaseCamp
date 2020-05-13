version 1.0

task RefgenieserverServe {
  input {
    String configConfig
    Boolean dbgDbg
    String portPort
  }
  command <<<
    refgenieserver serve \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{true="--dbg" false="" dbgDbg} \
      ~{if defined(portPort) then ("--port " +  '"' + portPort + '"') else ""}
  >>>
}