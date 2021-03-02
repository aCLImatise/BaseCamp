version 1.0

task Dcmrecv {
  input {
    Boolean? arguments
    Boolean? quiet
    Boolean? verbose
    Boolean? debug
    Boolean? log_level
    Boolean? log_config
    Boolean? config_file
    Boolean? ae_title
    Boolean? use_called_ae_title
    Boolean? acse_timeout
    Boolean? dim_se_timeout
    Boolean? max_pdu
    Boolean? disable_host_lookup
    Directory? output_directory
    Boolean? no_subdir
    Boolean? filename_extension
    Boolean? normal
    Boolean? ignore
    String port
  }
  command <<<
    dcmrecv \
      ~{port} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_config) then "--log-config" else ""} \
      ~{if (config_file) then "--config-file" else ""} \
      ~{if (ae_title) then "--aetitle" else ""} \
      ~{if (use_called_ae_title) then "--use-called-aetitle" else ""} \
      ~{if (acse_timeout) then "--acse-timeout" else ""} \
      ~{if (dim_se_timeout) then "--dimse-timeout" else ""} \
      ~{if (max_pdu) then "--max-pdu" else ""} \
      ~{if (disable_host_lookup) then "--disable-host-lookup" else ""} \
      ~{if (output_directory) then "--output-directory" else ""} \
      ~{if (no_subdir) then "--no-subdir" else ""} \
      ~{if (filename_extension) then "--filename-extension" else ""} \
      ~{if (normal) then "--normal" else ""} \
      ~{if (ignore) then "--ignore" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dcmtk:3.6.5--h5fca97b_0"
  }
  parameter_meta {
    arguments: "print expanded command line arguments"
    quiet: "quiet mode, print no warnings and errors"
    verbose: "verbose mode, print processing details"
    debug: "debug mode, print debug information"
    log_level: "[l]evel: string constant\\n(fatal, error, warn, info, debug, trace)\\nuse level l for the logger"
    log_config: "[f]ilename: string\\nuse config file f for the logger"
    config_file: "[f]ilename, [p]rofile: string\\nuse profile p from configuration file f"
    ae_title: "[a]etitle: string\\nset my AE title (default: DCMRECV)"
    use_called_ae_title: "always respond with called AE title"
    acse_timeout: "[s]econds: integer (default: 30)\\ntimeout for ACSE messages"
    dim_se_timeout: "[s]econds: integer (default: unlimited)\\ntimeout for DIMSE messages"
    max_pdu: "[n]umber of bytes: integer (4096..131072)\\nset max receive pdu to n bytes (default: 16384)"
    disable_host_lookup: "disable hostname lookup"
    output_directory: "[d]irectory: string (default: \\\".\\\")\\nwrite received objects to existing directory d"
    no_subdir: "do not generate any subdirectories (default)"
    filename_extension: "[e]xtension: string (default: none)\\nappend e to all generated filenames"
    normal: "allow implicit format conversions (default)"
    ignore: "ignore dataset, receive but do not store it"
    port: "tcp/ip port number to listen on"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}