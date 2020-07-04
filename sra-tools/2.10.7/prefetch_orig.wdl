version 1.0

task PrefetchOrig {
  input {
    String? ascp_options
    File? output_file
    Directory? output_directory
    String? log_level
    Boolean? verbose
    Boolean? quiet
    File? option_file
    String sra_accession
  }
  command <<<
    prefetch-orig \
      ~{sra_accession} \
      ~{if defined(ascp_options) then ("--ascp-options " +  '"' + ascp_options + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  parameter_meta {
    ascp_options: "Arbitrary options to pass to ascp command  line. "
    output_file: "Write file to FILE when downloading  single file. "
    output_directory: "Save files to DIRECTORY/ "
    log_level: "Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug) or  (0-6) Current/default is warn "
    verbose: "Increase the verbosity of the program  status messages. Use multiple times for more  verbosity. Negates quiet. "
    quiet: "Turn off all status messages for the  program. Negated by verbose. "
    option_file: "Read more options and parameters from the  file. "
    sra_accession: ""
  }
}