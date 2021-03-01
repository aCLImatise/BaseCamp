version 1.0

task JobTreeStats {
  input {
    File? tempdir_root
    Directory? job_tree
    File? output_file
    Boolean? raw
    Boolean? pretty
    String? categories
    String? sort_category
    Int? sortfield
    Boolean? sort_reverse
    Boolean? cache
    Boolean? logoff
    Boolean? loginfo
    Boolean? log_debug
    String? loglevel
    File? log_file
    Boolean? rotating_logging
    String job_tree_dir
  }
  command <<<
    jobTreeStats \
      ~{job_tree_dir} \
      ~{if defined(tempdir_root) then ("--tempDirRoot " +  '"' + tempdir_root + '"') else ""} \
      ~{if defined(job_tree) then ("--jobTree " +  '"' + job_tree + '"') else ""} \
      ~{if defined(output_file) then ("--outputFile " +  '"' + output_file + '"') else ""} \
      ~{if (raw) then "--raw" else ""} \
      ~{if (pretty) then "--pretty" else ""} \
      ~{if defined(categories) then ("--categories " +  '"' + categories + '"') else ""} \
      ~{if defined(sort_category) then ("--sortCategory " +  '"' + sort_category + '"') else ""} \
      ~{if defined(sortfield) then ("--sortField " +  '"' + sortfield + '"') else ""} \
      ~{if (sort_reverse) then "--sortReverse" else ""} \
      ~{if (cache) then "--cache" else ""} \
      ~{if (logoff) then "--logOff" else ""} \
      ~{if (loginfo) then "--logInfo" else ""} \
      ~{if (log_debug) then "--logDebug" else ""} \
      ~{if defined(loglevel) then ("--logLevel " +  '"' + loglevel + '"') else ""} \
      ~{if defined(log_file) then ("--logFile " +  '"' + log_file + '"') else ""} \
      ~{if (rotating_logging) then "--rotatingLogging" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tempdir_root: "Path to where temporary directory containing all temp\\nfiles are created, by default uses the current working\\ndirectory as the base."
    job_tree: "Directory containing the job tree. Can also be\\nspecified as the single argument to the script.\\nDefault=./jobTree"
    output_file: "File in which to write results"
    raw: "output the raw xml data."
    pretty: "if not raw, prettify the numbers to be human readable."
    categories: "comma separated list from [time, clock, wait, memory]"
    sort_category: "how to sort Target list. may be from [alpha, time,\\nclock, wait, memory, count]. default=%(default)s"
    sortfield: "how to sort Target list. may be from [min, med, ave,\\nmax, total]. default=%(default)s"
    sort_reverse: "reverse sort order."
    cache: "stores a cache to speed up data display."
    logoff: "Turn off logging. (default is CRITICAL)"
    loginfo: "Turn on logging at INFO level. (default is CRITICAL)"
    log_debug: "Turn on logging at DEBUG level. (default is CRITICAL)"
    loglevel: "Log at level (may be either OFF/INFO/DEBUG/CRITICAL).\\n(default is CRITICAL)"
    log_file: "File to log in"
    rotating_logging: "Turn on rotating logging, which prevents log files\\ngetting too big.\\n"
    job_tree_dir: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}