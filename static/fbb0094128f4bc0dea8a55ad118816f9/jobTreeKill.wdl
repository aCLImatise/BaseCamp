version 1.0

task JobTreeKill {
  input {
    File? tempdir_root
    Directory? job_tree
    Boolean? logoff
    Boolean? loginfo
    Boolean? log_debug
    String? loglevel
    File? log_file
    Boolean? rotating_logging
    String job_tree_dir
    String? more
  }
  command <<<
    jobTreeKill \
      ~{job_tree_dir} \
      ~{more} \
      ~{if defined(tempdir_root) then ("--tempDirRoot " +  '"' + tempdir_root + '"') else ""} \
      ~{if defined(job_tree) then ("--jobTree " +  '"' + job_tree + '"') else ""} \
      ~{if (logoff) then "--logOff" else ""} \
      ~{if (loginfo) then "--logInfo" else ""} \
      ~{if (log_debug) then "--logDebug" else ""} \
      ~{if defined(loglevel) then ("--logLevel " +  '"' + loglevel + '"') else ""} \
      ~{if defined(log_file) then ("--logFile " +  '"' + log_file + '"') else ""} \
      ~{if (rotating_logging) then "--rotatingLogging" else ""}
  >>>
  parameter_meta {
    tempdir_root: "Path to where temporary directory containing all temp\\nfiles are created, by default uses the current working\\ndirectory as the base."
    job_tree: "Directory containing the job tree to kill"
    logoff: "Turn off logging. (default is CRITICAL)"
    loginfo: "Turn on logging at INFO level. (default is CRITICAL)"
    log_debug: "Turn on logging at DEBUG level. (default is CRITICAL)"
    loglevel: "Log at level (may be either OFF/INFO/DEBUG/CRITICAL).\\n(default is CRITICAL)"
    log_file: "File to log in"
    rotating_logging: "Turn on rotating logging, which prevents log files\\ngetting too big.\\n"
    job_tree_dir: ""
    more: ""
  }
  output {
    File out_stdout = stdout()
  }
}