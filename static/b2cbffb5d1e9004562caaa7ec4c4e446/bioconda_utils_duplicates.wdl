version 1.0

task BiocondaUtilsDuplicates {
  input {
    Boolean? strict_version
    Boolean? strict_build
    Boolean? dry_run
    Boolean? remove
    Boolean? url
    String? channel
    String? loglevel
    String? log_file
    String? log_file_level
    String? log_command_max_lines
    String config
  }
  command <<<
    bioconda-utils duplicates \
      ~{config} \
      ~{true="--strict-version" false="" strict_version} \
      ~{true="--strict-build" false="" strict_build} \
      ~{true="--dryrun" false="" dry_run} \
      ~{true="--remove" false="" remove} \
      ~{true="--url" false="" url} \
      ~{if defined(channel) then ("--channel " +  '"' + channel + '"') else ""} \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if defined(log_file_level) then ("--logfile-level " +  '"' + log_file_level + '"') else ""} \
      ~{if defined(log_command_max_lines) then ("--log-command-max-lines " +  '"' + log_command_max_lines + '"') else ""}
  >>>
  parameter_meta {
    strict_version: "Require version to strictly match. (default: False)"
    strict_build: "Require version and build to strictly match. (default: False)"
    dry_run: "Only print removal plan. (default: False)"
    remove: "Remove packages from anaconda. (default: False)"
    url: "Print anaconda urls. (default: False)"
    channel: "Channel to check for duplicates (default: 'bioconda')"
    loglevel: "Set logging level (debug, info, warning, error, critical) (default: 'info')"
    log_file: "Write log to file (default: -)"
    log_file_level: "Log level for log file (default: 'debug')"
    log_command_max_lines: "Limit lines emitted for commands executed (default: -)"
    config: "Path to yaml file specifying the configuration"
  }
}