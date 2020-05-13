version 1.0

task DgeniesRun {
  input {
    String modeMode
    Boolean dD
    String hostHost
    String portPort
    Boolean noNoCronS
    Boolean noNoBrowser
  }
  command <<<
    dgenies run \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{true="-d" false="" dD} \
      ~{if defined(hostHost) then ("--host " +  '"' + hostHost + '"') else ""} \
      ~{if defined(portPort) then ("--port " +  '"' + portPort + '"') else ""} \
      ~{true="--no-crons" false="" noNoCronS} \
      ~{true="--no-browser" false="" noNoBrowser}
  >>>
}