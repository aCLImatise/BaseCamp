version 1.0

task PbserviceRunAnalysis {
  input {
    String hostHost
    String portPort
    String logLogFile
    String logLogLevel
    Boolean debugDebug
    Boolean quietQuiet
    Boolean blockBlock
    String? jsonJsonPath
  }
  command <<<
    pbservice run-analysis \
      ~{jsonJsonPath} \
      ~{if defined(hostHost) then ("--host " +  '"' + hostHost + '"') else ""} \
      ~{if defined(portPort) then ("--port " +  '"' + portPort + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--block" false="" blockBlock}
  >>>
}