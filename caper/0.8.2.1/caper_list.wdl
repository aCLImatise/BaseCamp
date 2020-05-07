version 1.0

task CaperList {
  input {
    Boolean dryDryRun
    Boolean debugDebug
    String portPort
    String ipIp
    Boolean noNoServerHeartbeat
    String serverServerHeartbeatFile
    String serverServerHeartbeatTimeout
    String formatFormat
    String hideHideResultBefore
    Boolean hideHideSubWorkflow
    String? wfWfIdOrLabel
  }
  command <<<
    caper list \
      ~{wfWfIdOrLabel} \
      ~{true="--dry-run" false="" dryDryRun} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(portPort) then ("--port " +  '"' + portPort + '"') else ""} \
      ~{if defined(ipIp) then ("--ip " +  '"' + ipIp + '"') else ""} \
      ~{true="--no-server-heartbeat" false="" noNoServerHeartbeat} \
      ~{if defined(serverServerHeartbeatFile) then ("--server-heartbeat-file " +  '"' + serverServerHeartbeatFile + '"') else ""} \
      ~{if defined(serverServerHeartbeatTimeout) then ("--server-heartbeat-timeout " +  '"' + serverServerHeartbeatTimeout + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(hideHideResultBefore) then ("--hide-result-before " +  '"' + hideHideResultBefore + '"') else ""} \
      ~{true="--hide-subworkflow" false="" hideHideSubWorkflow}
  >>>
}