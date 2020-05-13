version 1.0

task JobTreeStatus {
  input {
    Boolean logoffLogoff
    Boolean loginfoLoginfo
    Boolean logLogDebug
    String loglevelLoglevel
    String logLogFile
    Boolean rotatingRotatingLogging
    String? jobJobTreeDir
  }
  command <<<
    jobTreeStatus \
      ~{jobJobTreeDir} \
      ~{true="--logOff" false="" logoffLogoff} \
      ~{true="--logInfo" false="" loginfoLoginfo} \
      ~{true="--logDebug" false="" logLogDebug} \
      ~{if defined(loglevelLoglevel) then ("--logLevel " +  '"' + loglevelLoglevel + '"') else ""} \
      ~{if defined(logLogFile) then ("--logFile " +  '"' + logLogFile + '"') else ""} \
      ~{true="--rotatingLogging" false="" rotatingRotatingLogging}
  >>>
}