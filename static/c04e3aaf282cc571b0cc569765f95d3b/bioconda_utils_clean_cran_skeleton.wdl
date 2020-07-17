version 1.0

task BiocondaUtilsCleanCranSkeleton {
  input {
    Boolean? no_windows
    String? loglevel
    String? log_file
    String? log_file_level
    String? log_command_max_lines
    String recipe
  }
  command <<<
    bioconda-utils clean-cran-skeleton \
      ~{recipe} \
      ~{true="--no-windows" false="" no_windows} \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if defined(log_file_level) then ("--logfile-level " +  '"' + log_file_level + '"') else ""} \
      ~{if defined(log_command_max_lines) then ("--log-command-max-lines " +  '"' + log_command_max_lines + '"') else ""}
  >>>
  parameter_meta {
    no_windows: "Use this when submitting an R package to Bioconda. After a CRAN skeleton is created, any Windows-related lines will be removed and the bld.bat file will be removed. (default: False)"
    loglevel: "Set logging level (debug, info, warning, error, critical) (default: 'info')"
    log_file: "Write log to file (default: -)"
    log_file_level: "Log level for log file (default: 'debug')"
    log_command_max_lines: "Limit lines emitted for commands executed (default: -)"
    recipe: "Path to recipe to be cleaned"
  }
}