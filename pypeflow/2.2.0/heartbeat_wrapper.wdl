version 1.0

task HeartbeatWrapper {
  input {
    String rateRate
    String heartbeatHeartbeatFile
    String exitExitFile
    Directory directoryDirectory
    String? commandCommand
  }
  command <<<
    heartbeat-wrapper \
      ~{commandCommand} \
      ~{if defined(rateRate) then ("--rate " +  '"' + rateRate + '"') else ""} \
      ~{if defined(heartbeatHeartbeatFile) then ("--heartbeat-file " +  '"' + heartbeatHeartbeatFile + '"') else ""} \
      ~{if defined(exitExitFile) then ("--exit-file " +  '"' + exitExitFile + '"') else ""} \
      ~{if defined(directoryDirectory) then ("--directory " +  '"' + directoryDirectory + '"') else ""}
  >>>
}