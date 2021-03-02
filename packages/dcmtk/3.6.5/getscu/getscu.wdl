version 1.0

task Getscu {
  input {
    Boolean? arguments
    Boolean? quiet
    Boolean? verbose
    Boolean? debug
    Boolean? log_level
    Boolean? log_config
    Boolean? key
    Boolean? patient
    Boolean? study
    Boolean? ps_only
    Boolean? ae_title
    Boolean? etitle_stringset_called
    Boolean? _proposeuncompr_propose
    Boolean? propose_little
    Boolean? propose_big
    Boolean? propose_deflated
    Boolean? propose_implicit
    Boolean? timeout
    Boolean? acse_timeout
    Boolean? dim_se_timeout
    Boolean? max_pdu
    Boolean? repeat
    Boolean? abort
    Directory? output_directory
    Boolean? normal
    Boolean? ignore
    String peer
    String port
    String dcm_file_in
  }
  command <<<
    getscu \
      ~{peer} \
      ~{port} \
      ~{dcm_file_in} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_config) then "--log-config" else ""} \
      ~{if (key) then "--key" else ""} \
      ~{if (patient) then "--patient" else ""} \
      ~{if (study) then "--study" else ""} \
      ~{if (ps_only) then "--psonly" else ""} \
      ~{if (ae_title) then "--aetitle" else ""} \
      ~{if (etitle_stringset_called) then "--call" else ""} \
      ~{if (_proposeuncompr_propose) then "-x" else ""} \
      ~{if (propose_little) then "--propose-little" else ""} \
      ~{if (propose_big) then "--propose-big" else ""} \
      ~{if (propose_deflated) then "--propose-deflated" else ""} \
      ~{if (propose_implicit) then "--propose-implicit" else ""} \
      ~{if (timeout) then "--timeout" else ""} \
      ~{if (acse_timeout) then "--acse-timeout" else ""} \
      ~{if (dim_se_timeout) then "--dimse-timeout" else ""} \
      ~{if (max_pdu) then "--max-pdu" else ""} \
      ~{if (repeat) then "--repeat" else ""} \
      ~{if (abort) then "--abort" else ""} \
      ~{if (output_directory) then "--output-directory" else ""} \
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
    key: "[k]ey: gggg,eeee=\\\"str\\\", path or dic. name=\\\"str\\\"\\noverride matching key"
    patient: "use patient root information model (default)"
    study: "use study root information model"
    ps_only: "use patient/study only information model"
    ae_title: "[a]etitle: string\\nset my calling AE title (default: GETSCU)"
    etitle_stringset_called: "[a]etitle: string\\nset called AE title of peer (default: ANY-SCP)"
    _proposeuncompr_propose: "=   --propose-uncompr      propose all uncompressed TS, explicit VR\\nwith local byte ordering first (default)"
    propose_little: "propose all uncompressed TS, explicit VR\\nlittle endian first"
    propose_big: "propose all uncompressed TS, explicit VR\\nbig endian first"
    propose_deflated: "propose deflated explicit VR little endian TS\\nand all uncompressed transfer syntaxes"
    propose_implicit: "propose implicit VR little endian TS only"
    timeout: "[s]econds: integer (default: unlimited)\\ntimeout for connection requests"
    acse_timeout: "[s]econds: integer (default: 30)\\ntimeout for ACSE messages"
    dim_se_timeout: "[s]econds: integer (default: unlimited)\\ntimeout for DIMSE messages"
    max_pdu: "[n]umber of bytes: integer (4096..131072)\\nset max receive pdu to n bytes (default: 16384)"
    repeat: "[n]umber: integer\\nrepeat n times"
    abort: "abort association instead of releasing it"
    output_directory: "[d]irectory: string (default: \\\".\\\")\\nwrite received objects to existing directory d"
    normal: "receive in memory, then write to disk (default)"
    ignore: "ignore store data, receive but do not store"
    peer: "hostname of DICOM peer"
    port: "tcp/ip port number of peer"
    dcm_file_in: "DICOM query file(s)"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}