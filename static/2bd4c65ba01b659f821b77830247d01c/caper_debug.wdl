version 1.0

task CaperDebug {
  input {
    Boolean dryDryRun
    Boolean debugDebug
    Boolean showShowCompletedTask
    String portPort
    String ipIp
    Boolean noNoServerHeartbeat
    String serverServerHeartbeatFile
    String serverServerHeartbeatTimeout
    String? wfWfIdOrLabel
  }
  command <<<
    caper debug \
      ~{wfWfIdOrLabel} \
      ~{true="--dry-run" false="" dryDryRun} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--show-completed-task" false="" showShowCompletedTask} \
      ~{if defined(portPort) then ("--port " +  '"' + portPort + '"') else ""} \
      ~{if defined(ipIp) then ("--ip " +  '"' + ipIp + '"') else ""} \
      ~{true="--no-server-heartbeat" false="" noNoServerHeartbeat} \
      ~{if defined(serverServerHeartbeatFile) then ("--server-heartbeat-file " +  '"' + serverServerHeartbeatFile + '"') else ""} \
      ~{if defined(serverServerHeartbeatTimeout) then ("--server-heartbeat-timeout " +  '"' + serverServerHeartbeatTimeout + '"') else ""}
  >>>
}