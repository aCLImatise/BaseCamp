version 1.0

task VdbEncrypt.2 {
  input {
    Boolean? force
    File? ngc
    String? log_level
    Boolean? verbose
    Boolean? quiet
    File? option_file
    String source_file
    String destination_file
    String destination_directory
    Directory directory
  }
  command <<<
    vdb-encrypt.2 \
      ~{source_file} \
      ~{destination_file} \
      ~{destination_directory} \
      ~{directory} \
      ~{true="--force" false="" force} \
      ~{if defined(ngc) then ("--ngc " +  '"' + ngc + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  parameter_meta {
    force: "Force overwrite of existing files "
    ngc: "PATH to ngc file "
    log_level: "Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug) or  (0-6) Current/default is warn "
    verbose: "Increase the verbosity of the program  status messages. Use multiple times for more  verbosity. Negates quiet. "
    quiet: "Turn off all status messages for the  program. Negated by verbose. "
    option_file: "Read more options and parameters from the  file. "
    source_file: "file to encrypt"
    destination_file: "name of resulting file"
    destination_directory: "directory of resulting file"
    directory: "directory to encrypt"
  }
}