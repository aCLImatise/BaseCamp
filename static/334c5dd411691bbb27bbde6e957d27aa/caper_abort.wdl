version 1.0

task CaperAbort {
  input {
    Boolean dryDryRun
    Boolean debugDebug
    String portPort
    String ipIp
    Boolean noNoServerHeartbeat
    String serverServerHeartbeatFile
    String serverServerHeartbeatTimeout
    String? wfWfIdOrLabel
  }
  command <<<
    caper abort \
      ~{wfWfIdOrLabel} \
      ~{true="--dry-run" false="" dryDryRun} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(portPort) then ("--port " +  '"' + portPort + '"') else ""} \
      ~{if defined(ipIp) then ("--ip " +  '"' + ipIp + '"') else ""} \
      ~{true="--no-server-heartbeat" false="" noNoServerHeartbeat} \
      ~{if defined(serverServerHeartbeatFile) then ("--server-heartbeat-file " +  '"' + serverServerHeartbeatFile + '"') else ""} \
      ~{if defined(serverServerHeartbeatTimeout) then ("--server-heartbeat-timeout " +  '"' + serverServerHeartbeatTimeout + '"') else ""}
  >>>
}