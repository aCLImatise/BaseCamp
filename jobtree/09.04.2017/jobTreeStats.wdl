version 1.0

task JobTreeStats {
  input {
    Boolean? logoff
    Boolean? loginfo
    Boolean? log_debug
    String? loglevel
    String? log_file
    Boolean? rotating_logging
    Boolean? job_tree
    String job_tree_dir
  }
  command <<<
    jobTreeStats \
      ~{job_tree_dir} \
      ~{true="--logOff" false="" logoff} \
      ~{true="--logInfo" false="" loginfo} \
      ~{true="--logDebug" false="" log_debug} \
      ~{if defined(loglevel) then ("--logLevel " +  '"' + loglevel + '"') else ""} \
      ~{if defined(log_file) then ("--logFile " +  '"' + log_file + '"') else ""} \
      ~{true="--rotatingLogging" false="" rotating_logging} \
      ~{true="--jobTree" false="" job_tree}
  >>>
  parameter_meta {
    logoff: "Turn off logging. (default is CRITICAL)"
    loginfo: "Turn on logging at INFO level. (default is CRITICAL)"
    log_debug: "Turn on logging at DEBUG level. (default is CRITICAL)"
    loglevel: "Log at level (may be either OFF/INFO/DEBUG/CRITICAL). (default is CRITICAL)"
    log_file: "File to log in"
    rotating_logging: "Turn on rotating logging, which prevents log files getting too big."
    job_tree: ""
    job_tree_dir: ""
  }
}