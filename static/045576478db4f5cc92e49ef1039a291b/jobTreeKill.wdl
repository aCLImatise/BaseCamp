version 1.0

task JobTreeKill {
  input {
    Boolean logoffLogoff
    Boolean loginfoLoginfo
    Boolean logLogDebug
    String loglevelLoglevel
    String logLogFile
    Boolean rotatingRotatingLogging
    String? jobJobTreeDir
    String? moreMore
  }
  command <<<
    jobTreeKill \
      ~{jobJobTreeDir} \
      ~{true="--logOff" false="" logoffLogoff} \
      ~{true="--logInfo" false="" loginfoLoginfo} \
      ~{true="--logDebug" false="" logLogDebug} \
      ~{if defined(loglevelLoglevel) then ("--logLevel " +  '"' + loglevelLoglevel + '"') else ""} \
      ~{if defined(logLogFile) then ("--logFile " +  '"' + logLogFile + '"') else ""} \
      ~{true="--rotatingLogging" false="" rotatingRotatingLogging} \
      ~{moreMore}
  >>>
}