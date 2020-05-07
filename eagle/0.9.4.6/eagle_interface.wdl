version 1.0

task EagleInterface {
  input {
    String portPort
    Boolean publicPublic
    Boolean noNoDebug
    String configConfig
    String processesProcesses
  }
  command <<<
    eagle interface \
      ~{if defined(portPort) then ("--port " +  '"' + portPort + '"') else ""} \
      ~{true="--public" false="" publicPublic} \
      ~{true="--nodebug" false="" noNoDebug} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(processesProcesses) then ("--processes " +  '"' + processesProcesses + '"') else ""}
  >>>
}