version 1.0

task Movescu {
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
    Boolean? move
    Boolean? _proposeuncompr_propose
    Boolean? propose_little
    Boolean? propose_big
    Boolean? propose_deflated
    Boolean? propose_implicit
    Boolean? no_port
    Boolean? pending_ignore
    Boolean? pending_read
    Boolean? timeout
    Boolean? acse_timeout
    Boolean? dim_se_timeout
    Boolean? max_pdu
    Boolean? disable_host_lookup
    Boolean? repeat
    Boolean? abort
    Boolean? ignore
    Boolean? cancel
    Boolean? uid_padding
    Directory? output_directory
    Boolean? normal
    Boolean? write_dataset
    Boolean? disable_new_vr
    Boolean? group_length_remove
    Boolean? length_undefined
    Boolean? padding_off
    String peer
    String port
    String dcm_file_in
  }
  command <<<
    movescu \
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
      ~{if (move) then "--move" else ""} \
      ~{if (_proposeuncompr_propose) then "-x" else ""} \
      ~{if (propose_little) then "--propose-little" else ""} \
      ~{if (propose_big) then "--propose-big" else ""} \
      ~{if (propose_deflated) then "--propose-deflated" else ""} \
      ~{if (propose_implicit) then "--propose-implicit" else ""} \
      ~{if (no_port) then "--no-port" else ""} \
      ~{if (pending_ignore) then "--pending-ignore" else ""} \
      ~{if (pending_read) then "--pending-read" else ""} \
      ~{if (timeout) then "--timeout" else ""} \
      ~{if (acse_timeout) then "--acse-timeout" else ""} \
      ~{if (dim_se_timeout) then "--dimse-timeout" else ""} \
      ~{if (max_pdu) then "--max-pdu" else ""} \
      ~{if (disable_host_lookup) then "--disable-host-lookup" else ""} \
      ~{if (repeat) then "--repeat" else ""} \
      ~{if (abort) then "--abort" else ""} \
      ~{if (ignore) then "--ignore" else ""} \
      ~{if (cancel) then "--cancel" else ""} \
      ~{if (uid_padding) then "--uid-padding" else ""} \
      ~{if (output_directory) then "--output-directory" else ""} \
      ~{if (normal) then "--normal" else ""} \
      ~{if (write_dataset) then "--write-dataset" else ""} \
      ~{if (disable_new_vr) then "--disable-new-vr" else ""} \
      ~{if (group_length_remove) then "--group-length-remove" else ""} \
      ~{if (length_undefined) then "--length-undefined" else ""} \
      ~{if (padding_off) then "--padding-off" else ""}
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
    key: "[k]ey: gggg,eeee=\\\"str\\\" or dict. name=\\\"str\\\"\\noverride matching key"
    patient: "use patient root information model (default)"
    study: "use study root information model"
    ps_only: "use patient/study only information model"
    ae_title: "[a]etitle: string\\nset my calling AE title (default: MOVESCU)"
    etitle_stringset_called: "[a]etitle: string\\nset called AE title of peer (default: ANY-SCP)"
    move: "[a]etitle: string\\nset move destinat. AE title (default: MOVESCU)"
    _proposeuncompr_propose: "=   --propose-uncompr      propose all uncompressed TS, explicit VR\\nwith local byte ordering first (default)"
    propose_little: "propose all uncompressed TS, explicit VR\\nlittle endian first"
    propose_big: "propose all uncompressed TS, explicit VR\\nbig endian first"
    propose_deflated: "propose deflated explicit VR little endian TS\\nand all uncompressed transfer syntaxes"
    propose_implicit: "propose implicit VR little endian TS only"
    no_port: "no port for incoming associations (default)"
    pending_ignore: "assume no dataset present (default)"
    pending_read: "read and ignore dataset"
    timeout: "[s]econds: integer (default: unlimited)\\ntimeout for connection requests"
    acse_timeout: "[s]econds: integer (default: 30)\\ntimeout for ACSE messages"
    dim_se_timeout: "[s]econds: integer (default: unlimited)\\ntimeout for DIMSE messages"
    max_pdu: "[n]umber of bytes: integer (4096..131072)\\nset max receive pdu to n bytes (default: 16384)"
    disable_host_lookup: "disable hostname lookup"
    repeat: "[n]umber: integer\\nrepeat n times"
    abort: "abort association instead of releasing it"
    ignore: "ignore store data, receive but do not store"
    cancel: "[n]umber: integer\\ncancel after n responses (default: never)"
    uid_padding: "silently correct space-padded UIDs"
    output_directory: "[d]irectory: string (default: \\\".\\\")\\nwrite received objects to existing directory d"
    normal: "allow implicit format conversions (default)"
    write_dataset: "write data set without file meta information"
    disable_new_vr: "disable support for new VRs, convert to OB"
    group_length_remove: "always write without group length elements"
    length_undefined: "write with undefined lengths"
    padding_off: "no padding (default)"
    peer: "hostname of DICOM peer"
    port: "tcp/ip port number of peer"
    dcm_file_in: "DICOM query file(s)"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}