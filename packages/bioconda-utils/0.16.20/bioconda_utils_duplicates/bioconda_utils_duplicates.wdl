version 1.0

task BiocondautilsDuplicates {
  input {
    Boolean? strict_version
    Boolean? strict_build
    Boolean? dry_run
    Boolean? remove
    Boolean? url
    String? channel
    String? loglevel
    File? log_file
    File? log_file_level
    Int? log_command_max_lines
    String detect_packages_defined
    String channels_dot
    String path_yaml_file
  }
  command <<<
    bioconda_utils duplicates \
      ~{detect_packages_defined} \
      ~{channels_dot} \
      ~{path_yaml_file} \
      ~{if (strict_version) then "--strict-version" else ""} \
      ~{if (strict_build) then "--strict-build" else ""} \
      ~{if (dry_run) then "--dryrun" else ""} \
      ~{if (remove) then "--remove" else ""} \
      ~{if (url) then "--url" else ""} \
      ~{if defined(channel) then ("--channel " +  '"' + channel + '"') else ""} \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if defined(log_file_level) then ("--logfile-level " +  '"' + log_file_level + '"') else ""} \
      ~{if defined(log_command_max_lines) then ("--log-command-max-lines " +  '"' + log_command_max_lines + '"') else ""}
  >>>
  parameter_meta {
    strict_version: "Require version to strictly match. (default: False)"
    strict_build: "Require version and build to strictly match. (default:\\nFalse)"
    dry_run: "Only print removal plan. (default: False)"
    remove: "Remove packages from anaconda. (default: False)"
    url: "Print anaconda urls. (default: False)"
    channel: "Channel to check for duplicates (default: 'bioconda')"
    loglevel: "Set logging level (debug, info, warning, error,\\ncritical) (default: 'info')"
    log_file: "Write log to file (default: -)"
    log_file_level: "Log level for log file (default: 'debug')"
    log_command_max_lines: "Limit lines emitted for commands executed (default: -)\\n"
    detect_packages_defined: "Detect packages in bioconda that have duplicates in the other defined"
    channels_dot: "positional arguments:"
    path_yaml_file: "Path to yaml file specifying the configuration"
  }
  output {
    File out_stdout = stdout()
  }
}