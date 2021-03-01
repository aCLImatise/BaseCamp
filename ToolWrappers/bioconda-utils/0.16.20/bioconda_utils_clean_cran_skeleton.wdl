version 1.0

task BiocondautilsCleancranskeleton {
  input {
    Boolean? no_windows
    String? loglevel
    File? log_file
    File? log_file_level
    Int? log_command_max_lines
  }
  command <<<
    bioconda_utils clean_cran_skeleton \
      ~{if (no_windows) then "--no-windows" else ""} \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if defined(log_file_level) then ("--logfile-level " +  '"' + log_file_level + '"') else ""} \
      ~{if defined(log_command_max_lines) then ("--log-command-max-lines " +  '"' + log_command_max_lines + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    no_windows: "Use this when submitting an R package to Bioconda.\\nAfter a CRAN skeleton is created, any Windows-related\\nlines will be removed and the bld.bat file will be\\nremoved. (default: False)"
    loglevel: "Set logging level (debug, info, warning, error,\\ncritical) (default: 'info')"
    log_file: "Write log to file (default: -)"
    log_file_level: "Log level for log file (default: 'debug')"
    log_command_max_lines: "Limit lines emitted for commands executed (default: -)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}